<?php include('partials/menu.php'); ?>

<div class="main-content">
    <div class="wrapper">
        <h1>Add clothes</h1>


        <br><br>

        <?php
if (isset($_SESSION['upload'])) {
    echo $_SESSION['upload'];
    unset($_SESSION['upload']);
}
?>

        <form action="" method ="POST" enctype="multipart/form-data">

        <table class = "tbl-30">
                <tr>
                    <td>Title:</td>
                    <td>
                        <input type="text" name = "title" placeholder="Title of the clothes">

                    </td>
                </tr>

                <tr>
                    <td>Description:</td>
                    <td>
                        <textarea name="description" cols="30" rows="5" placeholder="Description of the clothes."></textarea>
                    </td>
                </tr>


            <tr>
                <td>Price:</td>
                <td>
                    <input type= "number" name = "price">
                </td>
            </tr>

            <tr>
                <td>Seclect Image:</td>
                <td>
                    <input type="file" name="image">
                </td>
            </tr>


            <tr>
                <td>Category:</td>
                <td>
                    <select name="category">

<?php
//create PHP code to display categories from database
//1.create sql to get all active categories from database
$sql = "SELECT * FROM tbl_category WHERE active='Yes'";

//excuting quety
$res = mysqli_query($conn, $sql);

//count Rows to check whether we have categories or not
$count = mysqli_num_rows($res);

// if count is greater than zero, we have categories else we do not have categories
if ($count > 0) {
    //we have categories
    while ($rows = mysqli_fetch_assoc($res)) {
        //get the details of categories
        $id = $row['id'];
        $title = $row['title'];
    ?>
    <option value="<?php echo $id; ?>"><?php echo $title; ?></option>
    <?php
    }
}

else {
    //we do not have category
    ?>
    <option value ="0">No Category Found </option>
    <?php
}

//2.display on dropdown
?>
                    <option value ="1">clothes</option>
                    <option value="2">Snacks</option>
                    </select>
                </td>
            </tr>


            <tr>
                <td>Featured:</td>
                <td>
                    <input type="radio" name="featured" value="Yes">Yes
                    <input type="radio" name="featured" value="No">No
                </td>
            </tr>


             <tr>
                 <td>Active:</td>
                 <td>
                 <input type="radio" name="active" value="Yes">Yes
                 <input type="radio" name="active" value="No">No     
                 </td>
             </tr>


             <tr>
                 <td colspan="2">
                     <input type="submit" name="submit" value="Add clothes" class="btn-secondary">

                 </td>
             </tr>

        </table>

    </form>

<?php

//check whether the button is clicked or not
if (isset($_POST['submit'])) 
{
    //add the clothes in database
    //echo "Clicked";

    //1. get the data from form
    $title = $_POST['title'];
    $description = $_POST['description'];
    $price = $_POST['price'];
    $category = $_POST['category'];

    //check whether radion button for featured and active are checked or not
    if (isset($_POST['featured'])) {
        $featured = $_POST['featured'];
    }
    else {
        $featured = "No"; // setting the default value
    }

    if (isset($_POST['active'])) {
        $active = $_POST['active'];
    }
    else {
        $active = "No"; // setting default value
    }


    //2. Upload the image if selected
    //check whether the seclect image is clicked or not and upload the image only if the image is selected
    if (isset($_FILES['image']['name'])) {
        //get the details of the selected image
        $image_name = $_FILES['image']['name'];

        //check whether the image is selected or not and upload image only if selected
        if ($image_name != "") {
            //image is selected
            //a. renamge the image
            //get the extensiom of selected image

            $tmp = explode(".", $image_name);
            $ext = end($tmp);

            //created new name for image
            $image_name = "clothes-name-" . rand(0000, 9999) . "." . $ext; // new image name may be'clothes-name-657.jpg'

            //b. upload the image 
            //get the src path and destination path

            //source path is the current location of the image
            $src = $_FILES['image']['tmp_name'];

            //destination path for the image to be upload
            $dst = "../images/clothes/" . $image_name;

            //finally upload the clothes image
            $upload = move_uploaded_file($src, $dst);

            //check whether image uploaed of not
            if ($upload == false) {
                //failed to upload the image
                //redirect to add clothes page with error message
                $_SESSION['upload'] = "<div class='error'>Failed to upload image.</div>";
                header('location:' . SITEURL . 'admin/add-clothes.php');
                //stop the prosess
                die();
            }
        }
    }

    else {
        $image_name = ""; //setting default value as blank 
    }

    //3.insert into database

    //created a sql quety to save or add clothes
    //for numerical we do not need to pass value inside quotes '' but for string value it is compulsory to add quotes''


    $sql2 = "INSERT INTO tbl_clothes SET
   title = '$title',
   description = '$description',
   price=$price,
   image_name = '$image_name',
   category_id = $category,
   featured = '$featured',
   active = '$active'
   ";

    //execute the quety    
    $res2 = mysqli_query($conn, $sql2);

    //check whether data inserted pr not
    //4.redirect with message to manage clothes page
    if ($res2 == true) {
        //data inserted successfully
        $_SESSION['add'] = "<div class='success'>clothes Added Successfully.</div>";
        header('location:' . SITEURL . 'admin/manage-clothes.php');
    }
    else {
        //failed to insert data
        $_SESSION['add'] = "<div class='error'>Failed to Add clothes..</div>";
        header('location:' . SITEURL . 'admin/manage-clothes.php');
    }


}
?>

    </div>
</div>

<?php include('partials/footer.php'); ?>