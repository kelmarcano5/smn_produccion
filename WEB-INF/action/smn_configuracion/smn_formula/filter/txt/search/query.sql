select
		smn_produccion.smn_formula.smn_formula_id,
	case
	when smn_produccion.smn_formula.for_estatus=AC then '${lbl:b_active}'
	when smn_produccion.smn_formula.for_estatus=IN then '${lbl:b_inactive}'
	end as for_estatus_combo,
	smn_produccion.smn_formula.for_codigo,
	smn_produccion.smn_formula.for_descripcion,
	smn_produccion.smn_formula.for_estatus,
	smn_produccion.smn_formula.for_fecha_registro
	
from
	smn_produccion.smn_formula
