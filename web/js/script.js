function addtocart(product_name,product_price,quantity,unit)
{
    let cart=localStorage.getItem("cart");
    if(cart==null)
    {
       //if cart is empty
        let products=[];
        let product={productname:product_name,productprice:product_price,product_quantity:1,product_unit:unit};
        products.push(product);
        localStorage.setItem("cart",JSON.stringify(products));//converting products array into string to store as item in cart
        showtoast(product.productname +"product is added to cart");
    }
    else
    {
        //items in cart is already present 
        let pcart=JSON.parse(cart); //converting localStorage into JSON object
        let oldproduct=pcart.find((item)=>item.productname==product_name);
        if(oldproduct && oldproduct.product_quantity<quantity)
        {
            //increase the quantity of already present product in cart
             oldproduct.product_quantity=oldproduct.product_quantity+1;  
             pcart.map((item)=>{
                 if(item.productname==oldproduct.productname)
                 {
                     item.product_quantity=oldproduct.product_quantity;
                 }
             });
        
        localStorage.setItem("cart",JSON.stringify(pcart));
        showtoast(oldproduct.productname+" product quantity is increased,Quantity= "+oldproduct.product_quantity);
       }
        else if(!oldproduct)
        {
            //we have to add the new product in cart
            let product={productname:product_name,productprice:product_price,product_quantity:1,product_unit:unit};
            pcart.push(product);
            localStorage.setItem("cart",JSON.stringify(pcart));//converting products array into string to store as item in cart
            showtoast(product.productname +"product is added to cart");
        }
        else
         {
            showtoast("Can't increase the quantity,that much quantity is not avaliable in stock");
        }
    }
    updateCart();  
}

//update cart
function updateCart()
{
    
    let cartString=localStorage.getItem("cart");
    let cart=JSON.parse(cartString);
    if(cart==null || cart==0)
    {
        console.log("cart is empty!!!");
        $(".cart-items").html("( 0 )");
        $(".cart-body").html("<h3>Cart does not have any items</h3>");
        $(".checkout-btn").addClass("disabled");
    }
    else
    {
        console.log(cart) ;
       
        $(".cart-items").html(`( ${cart.length} )`);
        let table=`
        <table class='table'>
        <thead class='thead-light'>
        <tr>
        <th>Product Name</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Unit</th>
        <th>Total Price</th>
        <th>action</th>
        <th>action</th>
        </tr>
        </thead>  
        
        `;
         let totalprice=0;
         cart.map((item)=>{
             table+=`
             <tr>
              <td>'${item.productname}'</td>
              <td>&#8377;${item.productprice}</td>
              <td>${item.product_quantity}</td>
              <td>'${item.product_unit}'</td>
              <td>&#8377;${item.product_quantity * item.productprice}</td>
              <td><button onclick="viewfromcart('${item.productname}',${item.product_quantity})" class="btn btn-success btn-sm">View</button></td>
              <td><button onclick="deletefromcart('${item.productname}')" class="btn btn-danger btn-sm">Remove</button></td>
             </tr>
            `;
            totalprice +=item.productprice * item.product_quantity;
        });
        
        table=table + `
        <tr><td colspan='9' class='text-right font-weight-bold'>Total price:&#8377;${totalprice}</td></tr>          
        </table>`;
        $(".cart-body").html(table);
        $(".checkout-btn").removeClass("disabled"); //adding dynamic attribute disabled on button
       }
  }
  function viewfromcart(product_name,quantity)
  {
     window.location="buyproduct_data.jsp?productname="+product_name+"&productquan="+quantity;
  }

  //delete item from cart
 function deletefromcart(product_name){
    console.log(product_name);
    let cart=JSON.parse(localStorage.getItem('cart'));//fetching the item from local storage and converting into JSON object
    let newcart=cart.filter((item)=> item.productname != product_name);
    localStorage.setItem('cart',JSON.stringify(newcart));
    updateCart();
    showtoast("Product is removed from cart");
 }

$(document).ready(function(){
  updateCart();
});

//function to display custom toast message
function showtoast(content)
{
    $("#toast").addClass("display");
    $("#toast").html(content);
    setTimeout(()=>{
        $("#toast").removeClass("display");//removing dynamic attribute disabled on button
    }, 4000);
}

function gotocheckout()
{
   window.location="loginuser_form.jsp";
   
}