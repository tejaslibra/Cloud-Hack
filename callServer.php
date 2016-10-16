<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_PORT => "9090",
  CURLOPT_URL => "http://139.59.30.133:9090/auth/raw",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => "  {\r\n        \"aadhaar-id\": \"582916876742\",\r\n        \"location\": {\r\n            \"type\": \"pincode\",\r\n            \"pincode\": \"803101\"\r\n        },\r\n        \"modality\": \"demo\",\r\n        \"certificate-type\": \"preprod\",\r\n        \"demographics\": {\r\n            \"name\": {\r\n                \"matching-strategy\": \"exact\",\r\n                \"name-value\": \"Praful Anand\"\r\n            }\r\n        }\r\n    }",
  CURLOPT_HTTPHEADER => array(
    "cache-control: no-cache",
    "content-type: application/json",
    "postman-token: 0b801e27-8314-1e91-63c6-adb5683b43bd"
  ),
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  echo "cURL Error #:" . $err;
} else {
  echo $response;
}
return $response;
?>