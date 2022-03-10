<?php
include "header.php";
include "slider.php";
include "class/product_class.php"
?>
<?php
$product = new  product;
if($_SERVER['REQUEST_METHOD']==='POST'){
 
    $insert_product=  $product -> insert_product($_POST,$_FILES);
}
?>

<div class="admin-content-right">
<div class="admin-content-right-product_add">
                <h1>Thêm Sản Phẩm</h1>
                <form action="" method="post" enctype="multipart/form-data"> 
                    <label for="">Nhập tên sản phẩm <span style="color: red; ">*</span></label>
                    <input name="product_name" required type="text" >
                    <label for="">chọn danh mục <span style="color: red; ">*</span></label>
                    <select name="cartegory_id" id="">
                        <?php
                        $show_cartegory = $product -> show_cartegory();
                        if($show_cartegory){while($result = $show_cartegory -> fetch_assoc()){

                       
                        ?>
                        <option value="<?php echo $result["cartegory_id"] ?>"><?php echo $result["cartegory_name"] ?></option>
                        <?php
                        }}
                        ?>
                    </select>
                    <label for="">chọn loại sản phẩm<span style="color: red; ">*</span></label>
                    <select name="brand_id" id="">
                        <label for="">chọn loại sản phẩm<span style="color: red; ">*</span></label>
                        <option value="#">--Chọn--</option>
                        <?php
                        $show_brand = $product -> show_brand();
                        if($show_brand){while($result = $show_brand -> fetch_assoc()){

                       
                        ?>
                        <option value="<?php echo $result["brand_id"] ?>"><?php echo $result["brand_name"] ?></option>
                        <?php
                        }}
                        ?>

                    </select>
                    <label for="">Giá sản phẩm<span style="color: red; ">*</span></label>
                    <input name="product_price" required type="text">
                    <label for="">Giá Khuyển Mãi<span style="color: red; ">*</span></label>
                    <input name="product_price_new" required type="text">
                    <label for="">Mô Tả Sản Phẩm<span style="color: red; ">*</span></label>
                    <textarea required name="product_desc" id="editor1" cols="30" rows="10" ></textarea> 
                    <label required for="">Ảnh Sản Phẩm<span style="color: red; ">*</span></label>
                    <input  name="product_img" type="file">
                    <label for="">anh mo ta<span style="color: red; ">*</span></label>
                    <input  name="product_img_desc[]" required multiple type="file">
                    <button type="submit">Thêm</button>
                </form>
            </div>
        </div>
    </section>
</body>
<script>
                // Replace the <textarea id="editor1"> with a CKEditor 4
                // instance, using default configuration.
                CKEDITOR.replace( 'editor1' );
            </script>

</html>