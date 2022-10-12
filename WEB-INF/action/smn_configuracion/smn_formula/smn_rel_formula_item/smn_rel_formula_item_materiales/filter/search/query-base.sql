select
	smn_produccion.smn_rel_formula_item_materiales.smn_rel_formula_item_id,
	smn_produccion.smn_rel_formula_item_materiales.smn_item_id,
	smn_produccion.smn_rel_formula_item_materiales.rfm_cantidad,
	smn_produccion.smn_rel_formula_item_materiales.smn_unidad_medida_rf,
	smn_produccion.smn_rel_formula_item_materiales.rfm_fecha_registro,
		smn_produccion.smn_rel_formula_item_materiales.smn_rel_formula_item_materiales_id
	
from
	smn_produccion.smn_rel_formula_item_materiales
	inner join smn_produccion.smn_rel_formula_item on smn_produccion.smn_rel_formula_item.smn_rel_formula_item_id = smn_produccion.smn_rel_formula_item_materiales.smn_rel_formula_item_id

where
	smn_rel_formula_item_materiales_id is not null
	and smn_produccion.smn_rel_formula_item_materiales.smn_rel_formula_item_id=${fld:id2}
	${filter}
order by
		smn_rel_formula_item_materiales_id