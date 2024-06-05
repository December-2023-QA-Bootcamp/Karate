function fn() 
{   
  var env = karate.env; // get java system property 'karate.env'
  karate.log('karate.env system property was:', env);
  
  if (!env) {
    env = 'dev'; // a custom 'intelligent' default
  }
  
  var config = { // base config JSON
  	uiUrl: 'https://portal.cms.gov/portal/',
    baseUrl: 'https://reqres.in/'
  };
  
  if (env == 'stage') {
    // over-ride only those that need to be
    config.uiUrl = 'https://stg-portal.cms.gov/portal/';
    config.baseUrl = 'https://stage-reqres.in/';
  } else if (env == 'prod') {
	config.uiUrl = 'https://prod-portal.cms.gov/portal/';
    config.baseUrl = 'https://prod-reqres.in/';
  }
  
  config.constant = karate.callSingle('classpath:api/util/constant.js');
  config.schema = karate.callSingle('classpath:api/util/schema.js');
  
  // don't waste time waiting for a connection or if servers don't respond within 5 seconds
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  return config;
}