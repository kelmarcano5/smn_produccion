select
		smn_produccion.smn_rel_formula_item_funciones.smn_rel_formula_item_funciones_id,
	${field}
from
	smn_produccion.smn_rel_formula_item_funciones
where
		smn_produccion.smn_rel_formula_item_funciones.smn_rel_formula_item_funciones_id is not null
	${filter}
	
	
