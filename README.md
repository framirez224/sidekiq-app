# README

This is a simple rails app made to show [Sidekiq's](https://github.com/mperham/sidekiq) capabilities.

To cover:
  - What is sidekiq?
    - https://github.com/mperham/sidekiq/wiki/The-Basics
  - Redis:
    ```
    redis-cli -u 'redis://127.0.0.1:6379/8'

    # Get all keys
    > keys '*'

    # Get the next two entries in the queue
    > LRANGE queue:default 0 2
    ```
