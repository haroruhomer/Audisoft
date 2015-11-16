class ControlEstado < ActiveRecord::Base
  belongs_to :control
  belongs_to :estado
end
