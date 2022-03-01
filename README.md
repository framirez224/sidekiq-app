# README

This is a simple rails app made to show [Sidekiq's](https://github.com/mperham/sidekiq) capabilities.

## Setup

This app only requires Redis. Ensure you have a Redis instance running on localhost, or edit the sidekiq configuration in `config/initializers/sidekiq.rb`.

## To cover
### What is sidekiq?
    - https://github.com/mperham/sidekiq/wiki/The-Basics
### Redis
```
redis-cli -u 'redis://127.0.0.1:6379/8'

# Get all keys
> keys '*'

# Get the next two entries in the queue
> LRANGE queue:default 0 2
```
### Jobs

  - `ShortJob` - A job meant to simulate a quick processing job
  - `MailerJob` - A job simulating a processing job in another queue
  - `LongJob` - A job simulating a long running process
  - `ErrorJob` - A job simulating a job that encounters an error

### Things to Cover
  - The Sidekiqs gem interaction with Redis
  - How to enqueue jobs
    - A single job
    - A bunch of jobs
  - How the jobs are being processed
    - The Job class
    - Class options
