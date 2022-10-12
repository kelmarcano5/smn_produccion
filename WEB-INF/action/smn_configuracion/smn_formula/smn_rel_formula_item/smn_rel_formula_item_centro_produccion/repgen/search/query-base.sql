select
		smn_produccion.smn_rel_formula_item_centro_produccion.smn_rel_formula_item_centro_produccion_id,
	${field}
from
	smn_produccion.smn_rel_formula_item_centro_produccion
where
		smn_produccion.smn_rel_formula_item_centro_produccion.smn_rel_formula_item_centro_produccion_id is not null
	${filter}
	
	
