# Unit Testing API Requests

_**This is a Makers Bite.** Bites are designed to train specific skills or
tools. They contain an intro, a demonstration video, some exercises with an
example solution video, and a challenge without a solution video for you to test
your learning. [Read more about how to use Makers
Bites.](https://github.com/makersacademy/course/blob/main/labels/bites.md)_

Learn to test API requests using RSpec doubles.

## Introduction

So far this has been a bit theoretical. Now we will show you a realistic
use-case for this technique.

Many applications request data from the internet. That data is regularly
updated, which is great, but it makes it hard to test. Consider:

```ruby
require 'net/http'
require 'json'

class ActivitySuggester
  def suggest
    response = make_request_to_api
    return "Why not: #{response["activity"]}"
  end

  private

  # This method calls an 'API' on the internet to get a random activity.
  # An API is a way of allowing programs to request data from other programs.
  def make_request_to_api
    text_response = Net::HTTP.get("www.boredapi.com", "/api/activity")
    return JSON.parse(text_response)
  end
end

# Usage
# =====
# activity_suggester = ActivitySuggester.new
# activity_suggester.suggest # => "Why not: Learn how to use a french press"
# activity_suggester.suggest # => "Why not: Hold a video game tournament with some friends"
```

This is really wonderful, but how do we test it?

The answer is to replace `Net::HTTP` — the Ruby library we're using to make the
request — with a double. That way we can control what it returns.

Here's how we do that:

```ruby
require 'json'

class ActivitySuggester
  def initialize(requester) # requester is usually Net::HTTP
    @requester = requester
  end

  def suggest
    response = make_request_to_api
    return "Why not: #{response["activity"]}"
  end

  private

  def make_request_to_api
    # We use '@requester' rather than 'Net:HTTP'
    text_response = @requester.get(URI("https://www.boredapi.com/api/activity"))
    return JSON.parse(text_response)
  end
end

# Usage
# =====
# require 'net/http'
# activity_suggester = ActivitySuggester.new(Net::HTTP)
# activity_suggester.suggest # => "Why not: Learn how to use a french press"
# activity_suggester.suggest # => "Why not: Hold a video game tournament with some friends"

# To test this
RSpec.describe ActivitySuggester do
  it "calls an API to provide a suggested activity" do
    requester_dbl = double :requester
    # We expect `requester_dbl` to be called with `#get` and the right args
    # And we tell it to return a sample output of the API
    # I got this using `curl "https://www.boredapi.com/api/activity"`
    expect(requester_dbl).to receive(:get)
      .with(URI("https://www.boredapi.com/api/activity"))
      .and_return('{"activity":"Take your dog on a walk","type":"relaxation","participants":1,"price":0,"link":"","key":"9318514","accessibility":0.2}')

    activity_suggester = ActivitySuggester.new(requester_dbl)
    result = activity_suggester.suggest
    expect(result).to eq "Why not: Take your dog on a walk"
  end
end
```

By crafting a double that acts just like `Net::HTTP`, at least as far as `ActivitySuggester` wants to use it, you can make this untestable code testable.

## Demonstration

[Demonstration Video](https://www.youtube.com/watch?v=znbct4MAp9A&t=4725s)

## Exercise

Unit test this class.

```ruby
require 'date'
require 'json'
require 'net/http'

class TimeError
  # Returns difference in seconds between server time
  # and the time on this computer
  def error
    return get_server_time - Time.now
  end

  private

  def get_server_time
    text_response = Net::HTTP.get(URI("https://worldtimeapi.org/api/ip"))
    json = JSON.parse(text_response)
    return DateTime.parse(json["utc_datetime"]).to_time
  end
end
```

To make this testable, you will need to create a double for `Net:HTTP` and also
deal with the behaviour of `Time.now` which is also non-deterministic.

<!-- OMITTED -->

[Example Solution](https://www.youtube.com/watch?v=znbct4MAp9A&t=5625s)

## Challenge

Unit test this class.

```ruby
require 'json'
require 'net/http'

class CatFacts
  def provide
    return "Cat fact: #{get_cat_fact["fact"]}"
  end

  private

  def get_cat_fact
    text_response = Net::HTTP.get(URI("https://catfact.ninja/fact"))
    return JSON.parse(text_response)
  end
end
```


[Next Challenge](05_unit_testing_terminal_io_bite.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=mocking_bites%2F04_unit_testing_api_requests_bite.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=mocking_bites%2F04_unit_testing_api_requests_bite.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=mocking_bites%2F04_unit_testing_api_requests_bite.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=mocking_bites%2F04_unit_testing_api_requests_bite.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=mocking_bites%2F04_unit_testing_api_requests_bite.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
