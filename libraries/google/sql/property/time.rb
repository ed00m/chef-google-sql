# Copyright 2018 Google Inc.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------

require 'time'

module Google
  module Sql
    module Data
      # A Time that always returns a ISO-8601 string
      class Time < ::Time
        def to_s
          # All GCP APIs expect timestamps in the ISO-8601 / RFC3339 format

          # Overriding the .to_s method ensures that Ruby will get a
          # ISO-8601 timestamp at the last moment and ensures the timestamp
          # format is abstracted away.
          iso8601
        end
      end
    end

    module Property
      # A class to handle serialization of Time items.
      class Time
        def self.coerce
          ->(x) { ::Google::Sql::Property::Time.catalog_parse(x) }
        end

        def self.api_parse(value)
          return if value.nil?
          return value if value.is_a? ::Time
          Data::Time.parse(value)
        end

        def self.catalog_parse(value)
          return if value.nil?
          return value if value.is_a? ::Time
          Data::Time.parse(value)
        end
      end
    end
  end
end
