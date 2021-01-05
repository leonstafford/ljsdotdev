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

{{< rawhtml >}}
<a href="https://github.com/leonstafford" rel="me">
Follow me on GitHub
</a> to see what other projects I'm contributing to.
{{< /rawhtml >}}


### I survive on donations, please help!

I need your help to fund my work on open source projects. Please contribute what you can as a once-off or recurring donation to keep the creative juices flowing!

#### [One-time donation via PayPal](https://paypal.me/ljsdotdev)

#### [One-time or recurring donation via DonorBox](https://donorbox.org/leonstafford)

#### [Recurring donation via Patreon](https://www.patreon.com/leonstafford)

{{< rawhtml >}}
 <fieldset>
   <legend>One-time donations via credit card or Apple/Google Pay:</legend>
   <button
      id="checkout-button-sku_HQWKDw75VMLrDy"
    >$5</button>

    <button
      id="checkout-button-sku_HQWMjmyvGDjLhO"
    >$10</button>

    <button
      id="checkout-button-sku_HQWMWVZY5d3K4p"
    >$50</button>

    <button
      id="checkout-button-sku_HQWN47hJ80VwWG"
    >$100</button>
  </fieldset>
{{< /rawhtml >}}


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

