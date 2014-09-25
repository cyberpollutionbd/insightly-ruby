require 'insightly/dsl'

module Insightly
  module DSL::FileCategories
    # GET /v2.1/FileCategories/{id}
    # Get a file category.
    # @param [String, Fixnum] id: A file category's ID.
    # @return [Insightly::Resources::FileCategory, nil].
    def get_file_category(id:)
      Resources::FileCategory.parse(request(:get, "FileCategories/#{id}"))
    end

    # GET /v2.1/FileCategories
    # Get a list of file categories.
    # @return [Array, nil].
    def get_file_categories
      Resources::FileCategory.parse(request(:get, 'FileCategories'))
    end

    # POST /v2.1/FileCategories
    # Create a file category.
    # @param [Hash] category: File Category attributes.
    # @return [Insightly::Resources::FileCategory, nil].
    def create_file_category(category:)
      Resources::FileCategory.parse(request(:post, "FileCategories", category))
    end

    # PUT /v2.1/FileCategories
    # Update a file category.
    # @param [Hash] category: File Category attributes.
    # @return [Insightly::Resources::FileCategory].
    def update_file_category(category:)
      Resources::FileCategory.parse(request(:put, "FileCategories", category))
    end

    # DELETE /v2.1/FileCategories/{id}
    # Delete a file category.
    # @param [String, Fixnum] id: A file category's ID
    # @return [RestClient::Response].
    def delete_file_category(id:)
      request(:delete, "FileCategories/#{id}")
    end
  end
end
