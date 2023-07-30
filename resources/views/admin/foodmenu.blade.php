<x-app-layout>
</x-app-layout>
    <!DOCTYPE html>
<html lang="en">
  <head>
    <style type="text/css">
        label
        {
            display: inline-block;
            width: 100px;
        }
        </style>
    @include('admin.admincss')
    </head>
  <body>
    <div class="container-scroller">
    @include('admin.navbar')

    <div class="container" align="center" style="padding-top: 100px">

        <form action="{{url('/uploadfood')}}"method="post"enctype="multipart/form-data">

            @csrf

            <div style="padding: 15px">
                <label>Title:</label>
                <input style="color:blue"type="text"name="title"placeholder="Write a Title">
            </div>

            <div style="padding: 15px">
                <label>Price:</label>
                <input style="color:blue" type="num"name="price"placeholder="Price"required>
            </div>

            <div style="padding: 15px">
                <label>Image:</label>
                <input type="file" name="image" required>
            </div>

            <div style="padding: 15px">
                <label>Description:</label>
                <input style="color:blue" type="text"name="description"placeholder="Desciption"required>
            </div>

            <div style="padding: 15px">
                <input style="color:blue" type="Submit" value="Save">
            </div>

        </form>

            <div>
                <table bgcolor="black">
                    <tr>
                        <th style="padding: 30px">Food Name</th>
                        <th style="padding: 30px">Price</th>
                        <th style="padding: 30px">Description</th>
                        <th style="padding: 30px">Image</th>
                        <th style="padding: 30px">Action</th>
                        <th style="padding: 30px">Action2</th>
                    </tr>

                    @foreach ($data as $data )
                    <tr align="center">
                        <td>{{$data->Title}}</td>
                        <td>{{$data->Price}}</td>
                        <td>{{$data->Description}}</td>
                        <td><img height="200px"width="200px" src="/foodimage/{{$data->Image}}"></td>
                        <td><a href="{{url('/deletemenu',$data->id)}}">Delete</a></td>
                        <td><a href="{{url('/updateview',$data->id)}}">Update</a></td>

                    </tr>
                    @endforeach
                </table>
            </div>
    </div>
    </div>
    @include('admin.adminscript')
     </body>
</html>
