select
		smn_produccion.smn_rel_formula_item_equipos.smn_rel_formula_item_equipos_id,
	${field}
from
	smn_produccion.smn_rel_formula_item_equipos
where
		smn_produccion.smn_rel_formula_item_equipos.smn_rel_formula_item_equipos_id is not null
	${filter}
	
	
