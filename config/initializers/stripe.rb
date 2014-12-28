Rails.configuration.stripe = {
    :secret_key      => 'sk_test_WRncVLCuJaNSJ8SaHUwW7pkv'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]