<x-app-layout>
</x-app-layout>

<!DOCTYPE html>
<html lang="en">
  <head>
    @include('admin.admincss')
    </head>
  <body>
    <div class="container-scroller">
    @include('admin.navbar')
    <div class="container-fluid page-body-wrapper" align="center"  style="padding-top: 100px">
    <form action="{{url('/uploadchef')}}"method="post"enctype="multipart/form-data">
        @csrf
        <div style="padding: 15px">
        </label>Name:</label>
        <input style="color:blue"type="text"name="name"required=""placeholder="Enter name">
        </div>

        <div style="padding: 15px">
        </label>Speciality:</label>
        <input style="color:blue"type="text"name="speciality"required=""placeholder="Enter speciality">
        </div>

        <div style="padding: 15px">
        <label>Image:</label>
        <input style="color:blue"type="file"name="image"required="">
        </div>

        <div style="padding: 15px">
        <input style="color:blue"type="submit"value="Save">
        </div>

    </form>
    <table bgcolor="black">
        <tr>
            <th style="padding: 30px">Chef Name</th>
            <th style="padding: 30px">Speciality</th>
            <th style="padding: 30px">Image</th>
            <th style="padding: 30px">Action</th>
            <th style="padding: 30px">Action2</th>
        </tr>

        @foreach ($data as $data )
        <tr align="center">
            <td>{{$data->name}}</td>
            <td>{{$data->speciality}}</td>
            <td><img height="150px"width="150px"src="/chefimage/{{$data->image}}"></td>
            <td><a href="{{url('/updatechef',$data->id)}}">Update</td>
            <td><a href="{{url('/deletechef',$data->id)}}">Delete</td>
        </tr>
        @endforeach
    </table>
    </div>
    </div>
  </div>
    @include('admin.adminscript')
     </body>
</html>
