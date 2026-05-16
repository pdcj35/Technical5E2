function fn() {
  var env = karate.env || 'dev';
  var config = {
    baseUrl: 'https://petstore.swagger.io/v2'
  };
  return config;
}