<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\ChatMessage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

class ChatbotController extends Controller
{
    /**
     * Relays the website widget's question to the RAG API for the configured bot
     * (RAG_BOT_ID) and returns {"reply": "..."} as the widget expects.
     */
    public function chat(Request $request)
    {
        $request->validate([
            'message' => 'required|string|max:2000',
        ]);

        $botId = config('services.rag.bot_id');

        if (!$botId) {
            Log::error('Chatbot: RAG_BOT_ID is not configured');
            return response()->json(['message' => 'Chatbot is not configured'], 503);
        }

        $headers = [];
        if (config('services.rag.bot_key')) {
            $headers['X-Bot-Key'] = config('services.rag.bot_key');
        }

        try {
            $response = Http::withHeaders($headers)
                ->acceptJson()
                ->timeout((int) config('services.rag.timeout'))
                ->post(rtrim(config('services.rag.url'), '/') . "/v1/bots/{$botId}/chat", [
                    'message' => $request->message,
                    // hashed so the raw Laravel session id never leaves this server
                    'session_id' => hash('sha256', session()->getId()),
                ]);
        } catch (\Throwable $e) {
            Log::error('Chatbot: RAG API unreachable: ' . $e->getMessage());
            return response()->json(['message' => 'Chat service unavailable'], 503);
        }

        $reply = $response->json('reply');

        if ($response->failed() || !is_string($reply) || trim($reply) === '') {
            Log::error('Chatbot: RAG API error ' . $response->status() . ': ' . $response->body());
            return response()->json(['message' => 'Chat service unavailable'], 503);
        }

        ChatMessage::create([
            'session_id' => session()->getId(),
            'message' => $request->message,
            'response' => $reply,
        ]);

        return response()->json(['reply' => $reply]);
    }
}
