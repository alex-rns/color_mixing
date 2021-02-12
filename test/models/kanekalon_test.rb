# == Schema Information
#
# Table name: kanekalons
#
#  id           :bigint           not null, primary key
#  hex          :string
#  color_name   :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  default_mix  :string
#  kami         :string
#  jumbo_braids :string
#  aida         :string
#
require "test_helper"

class KanekalonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
