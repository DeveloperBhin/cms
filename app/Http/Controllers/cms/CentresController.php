<?php

namespace App\Http\Controllers\cms;
use Illuminate\Http\Request;
use App\Models\Centre;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;

class CentresController extends BaseController
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $centres = Centre::orderBy('pg_order', 'ASC')->get();

        return view('cms.centres.index', compact('centres'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('cms.centres.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'status' => 'required|string',
            'pg_order' => 'required|integer',
            'contents' => 'nullable|string',
            'contacts' => 'nullable|string',
            'main_centre' => 'nullable|boolean',
        ]);

        $centre = new Centre([
            'title' => $request->title,
            'alias' => Str::slug($request->title),
            'contents' => $request->contents,
            'contacts' => $request->contacts,
            'status' => $request->status,
            'pg_order' => $request->pg_order,
            'main' => $request->main_centre,
            'created_by' => Auth::id(),
            'created_at' => now(),
        ]);

        if ($centre->save()) {
            return back()->with('status', 'Centre added successfully.');
        } else {
            return back()->with('error', 'Failed to add centre.');
        }
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $centre = Centre::findOrFail($id);

        return view('cms.centres.edit', compact('centre'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $centre = Centre::findOrFail($id);

        $request->validate([
            'title' => 'required|string|max:255',
            'status' => 'required|string',
            'pg_order' => 'required|integer',
            'contents' => 'nullable|string',
            'contacts' => 'nullable|string',
        ]);

        $centre->update([
            'title' => $request->title,
            'alias' => Str::slug($request->title),
            'contents' => $request->contents,
            'contacts' => $request->contacts,
            'status' => $request->status,
            'pg_order' => $request->pg_order,
        ]);

        return back()->with('status', 'Centre updated successfully.');
    }

    /**
     * Move the specified resource to trash.
     */
    public function trash($id)
    {
        $centre = Centre::findOrFail($id);

        $centre->update([
            'status' => 'trash',
        ]);

        return redirect()->route('cms.centres.index')->with('status', 'Centre moved to trash.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $centre = Centre::findOrFail($id);

        $centre->delete();

        return back()->with('status', 'Centre deleted successfully.');
    }

    /**
     * Restore the specified resource from trash to draft.
     */
    public function restore($id)
    {
        $centre = Centre::findOrFail($id);

        $centre->update([
            'status' => 'draft',
        ]);

        return redirect()->route('cms.centres.index')->with('status', 'Centre restored to draft.');
    }
}
