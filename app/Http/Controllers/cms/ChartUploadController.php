<?php

namespace App\Http\Controllers\cms;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\ChartUpload;


// class ChartUploadController extends Controller
// {
//     public function index()
//     {
//         return view('cms.chart-uploads.index');
//     }
// }


class ChartUploadController extends Controller
{
    public function index()
    {
        $uploads = ChartUpload::latest()->paginate(10);

    return view('cms.chart_uploads.index', compact('uploads'));    }

    public function create()
    {
        return view('cms.chart_uploads.create');
    }

   public function store(Request $request)
{
    $request->validate([
        'title' => 'required',
        'file' => 'required|file|mimes:pdf'
    ]);

    $filename = null;

    if ($request->hasFile('file')) {

        $filename = time().'_'.$request->file('file')->getClientOriginalName();

        $request->file('file')->move(
            public_path('uploads/chart_uploads'),
            $filename
        );
    }

    ChartUpload::create([
        'title' => $request->title,
        'description' => $request->description,
        'file' => 'uploads/chart_uploads/'.$filename,
        'file_type' => 'pdf',
        'status' => 1
    ]);

    return redirect()
        ->route('chart_uploads.index')
        ->with('success', 'PDF uploaded successfully');
}

   public function edit($id)
{
    $upload = ChartUpload::findOrFail($id);

    return view('cms.chart_uploads.edit', compact('upload'));
}


public function update(Request $request, $id)
{
    $upload = ChartUpload::findOrFail($id);

    $request->validate([
        'title' => 'required',
        'description' => 'nullable',
        'file' => 'nullable|mimes:pdf|max:10240',
    ]);

    $upload->title = $request->title;
    $upload->description = $request->description;

    if ($request->hasFile('file')) {

        $file = $request->file('file');

        $filename = time().'_'.$file->getClientOriginalName();

        $file->move(public_path('uploads/chart_uploads'), $filename);

        $upload->file = 'uploads/chart_uploads/'.$filename;
        $upload->file_type = 'pdf';
    }

    $upload->save();

    return redirect()
        ->route('chart_uploads.index')
        ->with('success', 'Chart PDF updated successfully');
}

public function destroy($id)
{
    $upload = ChartUpload::findOrFail($id);

    // Delete PDF file from storage
    if ($upload->file && file_exists(public_path($upload->file))) {
        unlink(public_path($upload->file));
    }

    // Delete database record
    $upload->delete();

    return redirect()
        ->route('chart_uploads.index')
        ->with('success', 'Chart PDF deleted successfully.');
}
}


