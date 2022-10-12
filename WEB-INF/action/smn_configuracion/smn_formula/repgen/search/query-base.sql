select
		smn_produccion.smn_formula.smn_formula_id,
	${field}
from
	smn_produccion.smn_formula
where
		smn_produccion.smn_formula.smn_formula_id is not null
	${filter}
	
	
