select
	case
	when smn_produccion.smn_formula.for_estatus=AC then '${lbl:b_active}'
	when smn_produccion.smn_formula.for_estatus=IN then '${lbl:b_inactive}'
	end as for_estatus_combo,
	smn_produccion.smn_formula.*
from
	smn_produccion.smn_formula
where
	smn_formula_id = ${fld:id}
