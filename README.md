# ////FourSwords POBAData Chainlink External Adapter



It was built using the Chainlink NodeJS Template available at https://github.com/thodges-gh/CL-EA-NodeJS-Template.

## Setup

### Install and Zip
```bash
npm install
```

```bash
zip -r pobatag.zip
```


### Docker
```bash
docker build . -t pobatag
docker run --name pobatag -p 85:85 -e API_KEY=.env pobatag
```

This will run the adapter at http://localhost:85

### Install to AWS Lambda

- In Lambda Functions, create function
- On the Create function page:
  - Give the function a name
  - Use Node.js 8.10 for the runtime
  - Choose an existing role or create a new one
  - Click Create Function
- Under Function code, select "Upload a .zip file" from the Code entry type drop-down
- Click Upload and select the `open-weather-ea.zip` file
- Handler should remain index.handler
- Add the environment variable (repeat for all environment variables):
  - Key: API_KEY
  - Value: Your_API_key
- Save


###  Install to GCP

- In Functions, create a new function, choose to ZIP upload
- Click Browse and select the `open-weather-ea.zip` file
- Select a Storage Bucket to keep the zip in
- Function to execute: gcpservice
- Click More, Add variable (repeat for all environment variables)
  - NAME: API_KEY
  - VALUE: Your_API_key

## Parameters
The following API endpoints are supported with the related parameters

endpoint: _licenseKey

This adapter allows POBA subscribers to authenticate their license keys. 


```
