module Spree
  class Calculator::FlatPercentTaxonTotal < Calculator
    preference :flat_percent, :decimal, :default => 0
    preference :taxon, :integer, :default => nil

    def self.description
      I18n.t(:flat_percent_taxon)
    end

    def self.available?(object)
      true
    end

    def compute(object)
      return unless object.present? and object.line_items.present?
      return false unless !preferred_taxon.nil?

      item_total = 0.0
      object.line_items.each do |line_item|
        item_total += line_item.amount if line_item.product.taxons.where(:id => preferred_taxon).present?
      end
      value = item_total * BigDecimal(self.preferred_flat_percent.to_s) / 100.0
      (value * 100).round.to_f / 100
    end
  end
end
