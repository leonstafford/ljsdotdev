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

### I survive on donations, please help!

I rely on the community to fund my full-time work on open source projects. Please contribute what you can as a once-off or recurring donation to keep the creative juices flowing!

#### One-time donation via credit card, Apple/Google Pay

{{< rawhtml >}}
 <button
          style="background-color:#6772E5;color:#FFF;padding:8px 12px;border:0;border-radius:4px;font-size:1em"
          id="checkout-button-sku_HQWKDw75VMLrDy"
          role="link"
        >$5</button>

        <button
          style="background-color:#6772E5;color:#FFF;padding:8px 12px;border:0;border-radius:4px;font-size:1em"
          id="checkout-button-sku_HQWMjmyvGDjLhO"
          role="link"
        >$10</button>

        <button
          style="background-color:#6772E5;color:#FFF;padding:8px 12px;border:0;border-radius:4px;font-size:1em"
          id="checkout-button-sku_HQWMWVZY5d3K4p"
          role="link"
        >$50</button>

        <button
          style="background-color:#6772E5;color:#FFF;padding:8px 12px;border:0;border-radius:4px;font-size:1em"
          id="checkout-button-sku_HQWN47hJ80VwWG"
          role="link"
        >$100</button>
{{< /rawhtml >}}

#### [One-time or recurring donation via DonorBox](https://donorbox.org/leonstafford)

#### [Recurring donation via Patreon](https://www.patreon.com/leonstafford)



  


{{< rawhtml >}}
<script>

function stripeReadyHandler () {
  var stripe = Stripe('pk_live_2ksLCet5WbcASOQed0elyh0Y');

  // one-time buttons
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
  // recurring buttons
  document.querySelectorAll('button[id^="checkout-button-price"]').forEach(buyButton => {
    var price = buyButton.id.replace('checkout-button-', '');

    buyButton.addEventListener('click', function () {
      stripe.redirectToCheckout({
        lineItems: [{price: price, quantity: 1}],
        mode: 'subscription',

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

  document.querySelectorAll('.crypto-button').forEach(cryptoButton => {
    cryptoButton.addEventListener('click', function () {
      // get relative input value
      var walletInput = cryptoButton.parentNode.querySelector('input');

      walletInput.select();
      walletInput.setSelectionRange(0, 99999); /*For mobile devices*/

      document.execCommand("copy");
    });
  });
})();
</script>
{{< /rawhtml >}}
