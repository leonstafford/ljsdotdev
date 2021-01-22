---
---

Welcome! I'm an open source developer and maintainer of a few projects.

## Projects

 - [WP2Static](https://wp2static.com) is a developer-friendly, advanced WordPress static site generator.
 - [Static HTML Output](https://statichtmloutput.com) The original WordPress SSG, 10+ years development.
 - [SimplerStatic](https://github.com/leonstafford/simplerstatic) Evolution of the no-frills Simply Static plugin.
 - [Lokl](https://lokl.dev) Local WordPress development environment.
 - [Appish](https://appi.sh) Easy CLI scripts as an alternative to SaaS.
 - [Accessible Minimalism](https://github.com/leonstafford/accessible-minimalism-hugo-theme) Minimalist Hugo theme with a penchant for accessibility.


### Support my continued work!

Please join my creative journey, crafting software to solve real problems and doing it in a way that I hope to inspire others to follow.

{{< rawhtml >}}
 <fieldset>
   <legend><b>One-time donations via credit card or Apple/Google Pay:</b></legend>
   <button
      id="checkout-button-sku_HQWKDw75VMLrDy"
    >$5</button>
    <button
      id="checkout-button-sku_HQWMjmyvGDjLhO"
    >$10</button>
  </fieldset>
{{< /rawhtml >}}


#### Other donation options:

 - [Patreon](https://www.patreon.com/leonstafford)
 - [PayPal](https://paypal.me/ljsdotdev)
 - [DonorBox](https://donorbox.org/leonstafford)
 - [Ko-fi](https://ko-fi.com/leonstafford)



I want you to be part of the journey with me, so please sponsor any amount you can and get updates via [my Patreon page](https://www.patreon.com/leonstafford)

{{< rawhtml >}}
<script type="text/javascript">

function stripeReadyHandler () {
  var stripe = Stripe('pk_live_2ksLCet5WbcASOQed0elyh0Y');

  document.querySelectorAll('button[id^="checkout-button-sku"]').forEach(buyButton => {
    var sku = buyButton.id.replace('checkout-button-', '');

    buyButton.addEventListener('click', function () {
      stripe.redirectToCheckout({
        items: [
          {sku: sku, quantity: 1}
        ],
        successUrl: 'https://ljs.dev/thanks-for-contributing',
        cancelUrl: 'https://ljs.dev',
      })
      .then(function (result) {
        if (result.error) {
          var displayError = document.getElementById('error-message');
          displayError.textContent = result.error.message;
        }
      });
    });
  });
}

(function() {
    var script = document.createElement('script');
    script.type = 'text/javascript';
    script.src = 'https://js.stripe.com/v3';
    document.body.appendChild(script);
    script.onload = function() {
        stripeReadyHandler();
    };
})();
</script>
{{< /rawhtml >}}


