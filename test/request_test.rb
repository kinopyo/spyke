require 'test_helper'

module Spike
  class RequestTest < MiniTest::Test
    def test_request_path
      assert_equal '/recipes', Request.new('/recipes').path
      assert_equal '/recipes?public=true', Request.new('/recipes', public: true).path
      assert_equal '/recipes/2', Request.new('/recipes/:id', id: 2).path
      assert_equal '/recipes/2?public=true', Request.new('/recipes/:id', id: 2, public: true).path
      assert_equal '/users/1/recipes', Request.new('/users/:user_id/recipes', user_id: 1).path
    end
  end
end
