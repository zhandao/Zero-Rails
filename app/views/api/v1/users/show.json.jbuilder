# *** Generated by ZRO ***      

json.partial! 'api/base', total: 1

json.data @data.respond_to?(:to_builder) ? @data.to_builder : @data
