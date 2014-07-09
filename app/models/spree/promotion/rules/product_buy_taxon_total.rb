module Spree
  class Promotion::Rules::ProductBuyTaxonTotal < PromotionRule
    preference :amount, :decimal, :default => 100.00
    preference :operator, :string, :default => '>'
    preference :taxon, :integer, :default => nil

    OPERATORS = ['gt', 'gte']

    def eligible?(order, options = {})
      return false unless !preferred_taxon.nil?
      item_total = 0.0
      order.line_items.each do |line_item|
        item_total += line_item.amount if line_item.product.taxons.where(id: preferred_taxon).present?
      end
      item_total.send(preferred_operator == 'gte' ? :>= : :>, BigDecimal.new(preferred_amount.to_s))
    end
  end
end
