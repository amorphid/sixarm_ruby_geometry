# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start

require "sixarm_ruby_geometry/volume/volume_as_vector_3d"
require "sixarm_ruby_geometry_test/fake"

class VolumeAsVector3DTest < Minitest::Test

  require "matrix"
  class C < Vector
    include ::VolumeAsVector3D
  end

  def test_0
    assert(::VolumeAsVector3D)
  end

  def test_new
    assert(C[0,0,0])
  end

  def test_index
    e0 = fake_n
    e1 = fake_n
    e2 = fake_n
    c = C[e0, e1 , e2]
    assert_equal(c[0], e0)
    assert_equal(c[1], e1)
    assert_equal(c[2], e2)
  end

end
