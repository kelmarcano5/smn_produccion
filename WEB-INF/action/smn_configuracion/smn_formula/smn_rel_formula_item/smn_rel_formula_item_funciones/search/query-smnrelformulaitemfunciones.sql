select
		smn_produccion.smn_rel_formula_item_funciones.smn_rel_formula_item_funciones_id,
	smn_produccion.smn_rel_formula_item_funciones.smn_rel_formula_item_id,
	smn_produccion.smn_rel_formula_item_funciones.smn_funciones_id,
	smn_produccion.smn_rel_formula_item_funciones.rfe_cantidad,
	smn_produccion.smn_rel_formula_item_funciones.smn_unidad_medida_rf,
	smn_produccion.smn_rel_formula_item_funciones.rff_fecha_registro
	
from
	smn_produccion.smn_rel_formula_item_funciones
	inner join smn_produccion.smn_rel_formula_item on smn_produccion.smn_rel_formula_item.smn_rel_formula_item_id = smn_produccion.smn_rel_formula_item_funciones.smn_rel_formula_item_id

where
	smn_produccion.smn_rel_formula_item.smn_formula_id=${fld:id2}
