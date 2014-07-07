module Spree
  class Calculator::FlatPercentTaxonTotal < Calculator
    preference :flat_percent, :decimal, :default => 0
    preference :taxon, :string, :default => ''
    
    attr_accessor :preferred_flat_percent, :preferred_taxon

    def self.description
      I18n.t(:flat_percent_taxon)
    end

    def compute(object)
      return unless object.present? and object.line_items.present?

      item_total = 0.0
      object.line_items.each do |line_item|
        item_total += line_item.amount if line_item.product.taxons.where(:name => preferred_taxon).present?
      end
      value = item_total * BigDecimal(self.preferred_flat_percent.to_s) / 100.0
      (value * 100).round.to_f / 100
    end
  end
end
