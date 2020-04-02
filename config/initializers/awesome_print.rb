# frozen_string_literal: true

if Rails.env.development? || Rails.env.test?
  require "awesome_print"
end
