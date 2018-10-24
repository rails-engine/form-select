## 0.3.0

- Remove unless engine.rb

## 0.2.0

- Change `form_select` API:

   ```rb
   class Category
      form_select :name, field: [:name, :id]
      form_select :name, field: [:name]
   end
   ```

## 0.1.0

- First release with `form_select` for ActiveRecord model.