# frozen_string_literal: true

module SharedMethods
  def activate
    self.status = true
  end

  def activate_or_deactivate=(value)
    self.status = (value)
  end

  def set_upcased_name
    nome.upcase!
  end
end
