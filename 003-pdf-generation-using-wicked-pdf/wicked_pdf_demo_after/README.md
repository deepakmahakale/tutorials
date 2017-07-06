Basic Application
=================

### Ruby Version

  - **2.2.4**

### Dependencies

  - **None**

### Starting the application

  ```sh
  $ bundle
  $ rake db:setup
  $ rails s
  ```

### Resources

  - [github.com/mileszs/wicked_pdf](https://github.com/mileszs/wicked_pdf)

### Notes

  - *Use this option to view page as html*

    ```ruby
    show_as_html: params.key?('debug') # allow debugging based on url param
    ```
