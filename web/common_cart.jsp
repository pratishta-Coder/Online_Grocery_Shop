<%-- 
    Document   : common_cart
    Created on : 12-Nov-2020, 3:01:18 pm
    Author     : Shree
--%>
<!--bootstrap modal class used for add to cart module-->
<div class="modal fade" id="cart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Your Cart</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <div class="cart-body">
              
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary checkout-btn" onclick="gotocheckout()">Checkout</button>
      </div>
    </div>
  </div>
</div>
<!--end of modal-->
<!--custom toast message for all pages-->
<div id="toast"></div>