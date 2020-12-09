# ////POBA Physical, Object, Blockchain, Asset.

## Chainlink External Adapter + WooCommerce RestAPI

### Install
```bash
sudo npm install
```

### Docker
```bash
sudo docker build . -t poba
sudo docker run -d --name poba -p 85:85 --env-file=.env poba
```

This will run the adapter at http://localhost:85



## Parameters
The following API endpoints are supported with the related parameters

## endpoint: _licenseKey

This adapter allows POBA subscribers to authenticate their license keys 
using a WooCommerce License Key generator. Customers are provided a
unique license key with each purchase. A license key is required to claim
and mint POBA NFT tokens.  

End user enters license key
License key is sent to Chainlink node which calls ecommerce store to confirm license key.
Once license key is confirmed the node returns the associated order ID #
After order id is returned the mint token feature is enabled and allows endusers
to mint their POBA token that contains their unique order ID #.


## This adapter is for Chainlink node operators providing data fulfillment for pobatag.com product authentication software. ## 

## Adapter can be customized for your own e-commerce store! (Requires license key generator plugin w/ rest api) ##




```
