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
            'file' => 'required|file'
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
            'file' => $filename,
            'file_type' => $request->file('file')->getClientOriginalExtension()
        ]);

        return redirect()->route('chart_uploads.index')
            ->with('success', 'Chart uploaded successfully.');
    }

    public function edit($id)
    {
        $upload = ChartUpload::findOrFail($id);

        return view('chart_uploads.edit', compact('upload'));
    }

    public function update(Request $request, $id)
    {
        $upload = ChartUpload::findOrFail($id);

        $filename = $upload->file;

        if ($request->hasFile('file')) {
            $filename = time().'_'.$request->file('file')->getClientOriginalName();

            $request->file('file')->move(
                public_path('uploads/chart_uploads'),
                $filename
            );
        }

        $upload->update([
            'title' => $request->title,
            'description' => $request->description,
            'file' => $filename
        ]);

        return redirect()->route('chart_uploads.index')
            ->with('success', 'Chart updated successfully.');
    }

    public function destroy($id)
    {
        $upload = ChartUpload::findOrFail($id);

        if (file_exists(public_path('uploads/chart_uploads/'.$upload->file))) {
            unlink(public_path('uploads/chart_uploads/'.$upload->file));
        }

        $upload->delete();

        return back()->with('success', 'Chart deleted successfully.');
    }
}


