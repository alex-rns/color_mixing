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
class Kanekalon < ApplicationRecord
end
