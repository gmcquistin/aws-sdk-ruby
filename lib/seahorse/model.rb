# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.


module Seahorse
  module Model
    module Types
      autoload :Boolean, 'seahorse/model/types'
    end

    autoload :Node, 'seahorse/model/node'
    autoload :Property, 'seahorse/model/property'
    autoload :Api, 'seahorse/model/api'
    autoload :Operation, 'seahorse/model/operation'
    autoload :LazyOperationHash, 'seahorse/model/lazy_operation_hash'

    module Shapes
        autoload :Shape, 'seahorse/model/shapes/shape'
        autoload :StructureShape, 'seahorse/model/shapes/shape'
        autoload :IntegerShape, 'seahorse/model/shapes/shape'
        autoload :LongShape, 'seahorse/model/shapes/shape'
        autoload :FloatShape, 'seahorse/model/shapes/shape'
        autoload :DoubleShape, 'seahorse/model/shapes/shape'
        autoload :TimestampShape, 'seahorse/model/shapes/shape'
        autoload :BooleanShape, 'seahorse/model/shapes/shape'
        autoload :BlobShape, 'seahorse/model/shapes/shape'
        autoload :StringShape, 'seahorse/model/shapes/shape'
    end
  end
end
