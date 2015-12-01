dwolla-swagger-ruby
=========

The new Dwolla API V2 SDK, as generated by [this fork of swagger-codegen](https://github.com/mach-kernel/swagger-codegen). 

## Version

1.0.4

## Installation

`dwolla_swagger` is available on [RubyGems](https://rubygems.org/gems/dwolla_swagger).

```
gem install dwolla_swagger
```

*To add as a dependency*

```bash
echo "gem dwolla_swagger, '~>1.0.0'" >> Gemfile
bundle install
```

*To install directly from source:*
```
git clone https://github.com/Dwolla/dwolla-swagger-ruby
cd dwolla-swagger-ruby
gem build *.gemspec && gem install --local *.gem
```

*OS X users may need to run `gem install` as a privileged user.*

## Quickstart

`dwolla_swagger` makes it easy for developers to hit the ground running with our API. Before attempting the following, you should ideally create [an application key and secret](https://www.dwolla.com/applications).

### Configuring a client

To get started, all you need to set is the `access_token` and `host` values. 

```ruby
require 'dwolla_swagger'

DwollaSwagger::Swagger.configure do |config|
	config.access_token = 'a token'
	config.host = 'api-uat.dwolla.com'
	config.base_path = '/'
end
```

### List 10 customers

Now that we've set up our client, we can use it to make requests to the API. Let's retrieve 10 customer records associated with the authorization token used. 

```ruby
my_custies = DwollaSwagger::CustomersApi.list(:limit => 10)
p my_custies.to_body
```

### Creating a new customer

To create a customer, we can either provide a `Hash` with the expected values, or a `CreateCustomer` object. 

```ruby
location = DwollaSwagger::CustomersApi.create({:body => {
	:firstName => 'Jennifer',
	:lastName => 'Smith',
	:email => 'jsmith@gmail.com',
	:phone => '7188675309'
}})
```

#### or 

```ruby
jenny = DwollaSwagger::CreateCustomer.new
jenny.first_name = 'Jennifer'
jenny.last_name = 'Smith'
jenny.email = 'jsmith@gmail.com'
jenny.phone = '7188675309'

location = DwollaSwagger::CustomersApi.create(:body => jenny)
```

`location` will contain a URL to your newly created resource (HTTP 201 / Location header).

## Modules

`dwolla_swagger` contains `API` modules which allow the user to make requests, as well as `models` which are [DAOs](https://en.wikipedia.org/wiki/Data_access_object) that the library uses to serialize responses. 

### API
Each API module is named in accordance to ([Dwolla's API Spec](http://docsv2.dwolla.com/) and encapsulates all of the documented functionality. 

* `AccountsApi`
* `BusinessclassificationsApi`
* `CustomersApi`
* `DocumentsApi`
* `EventsApi`
* `FundingsourcesApi`
* `RootApi`
* `TransfersApi`
* `WebhooksApi`
* `WebhooksubscriptionsApi`

### Models

Each model represents the different kinds of requests and responses that can be made with the Dwolla API. 

* `AccountInfo`
* `Amount`
* `ApplicationEvent`
* `BaseObject`
* `BusinessClassification`
* `BusinessClassificationListResponse`
* `CreateCustomer`
* `CreateFundingSourceRequest`
* `CreateWebhook`
* `Customer`
* `CustomerListResponse`
* `Document`
* `DocumentListResponse`
* `EventListResponse`
* `FundingSource`
* `FundingSourceListResponse`
* `HalLink`
* `Money`
* `Transfer`
* `TransferListResponse`
* `TransferRequestBody`
* `Unit`
* `UpdateCustomer`
* `VerificationToken`
* `VerifyMicroDepositsRequest`
* `Webhook`
* `WebhookAttempt`
* `WebhookEventListResponse`
* `WebhookHeader`
* `WebhookHttpRequest`
* `WebhookHttpResponse`
* `WebhookListResponse`
* `WebhookRetry`
* `WebhookRetryRequestListResponse`
* `WebhookSubscription`


## Changelog

1.0.4
* API schema updated, `CustomersApi` has new endpoints for IAV verification. 
* Existing `Customer` related models updated, new `VerificationToken` model.

1.0.3
* API schema updated, `RootApi` now added.
* Changed `auth_token` to `access_token` in compliance with [RFC-6749](https://tools.ietf.org/html/rfc6749) recommended nomenclature.

1.0.2
* API schema updated, new methods in `FundingsourcesApi`.
* All methods which take Swagger variables in `path` (e.g, `/resource/{id}`) can now be passed a resource URL to make it easier for HAL-styled API consumption.
* More idiomatic response logic for HTTP 201 responses.

1.0.1
* API schema updated, new methods in `CustomersApi` and `TransfersApi`

1.0.0
* Initial release.

## Credits

This wrapper is semantically generated by a fork of [swagger-codegen](http://github.com/mach-kernel/swagger-codegen). 
 - [swagger-codegen contributors](https://github.com/swagger-api/swagger-codegen/network/members)
 - [David Stancu](http://github.com/mach-kernel)

## License

Copyright 2015 Swagger Contributors, David Stancu

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
