select
		smn_produccion.smn_rel_formula_item_materiales.smn_rel_formula_item_materiales_id,
	${field}
from
	smn_produccion.smn_rel_formula_item_materiales
where
		smn_produccion.smn_rel_formula_item_materiales.smn_rel_formula_item_materiales_id is not null
	${filter}
	
	
