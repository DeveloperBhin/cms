<?php

namespace App\Http\Controllers\Api;


use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ChatMessage;



class ChatbotController extends Controller
{


    public function chat(Request $request)
    {


        $request->validate([

            'message'=>'required|string'

        ]);



        $message = $request->message;



        $reply = $this->generateReply($message);



        ChatMessage::create([

            'session_id'=>session()->getId(),

            'message'=>$message,

            'response'=>$reply

        ]);



        return response()->json([

            'reply'=>$reply

        ]);


    }





    private function generateReply($message)
    {


        $message = strtolower($message);



        if(str_contains($message,'tari')){


            return 
            "TARI ni Tanzania Agricultural Research Institute inayofanya utafiti wa kilimo.";


        }



        if(str_contains($message,'mbegu')){


            return
            "TARI inafanya utafiti wa mbegu bora kwa mazao mbalimbali.";


        }



        if(str_contains($message,'center')){


            return
            "TARI ina vituo mbalimbali vya utafiti Tanzania.";


        }



        return
        "Samahani, sijapata taarifa hiyo. Tafadhali uliza kuhusu huduma za TARI.";


    }


}