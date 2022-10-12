select
	(select smn_base.smn_item.itm_nombre from  smn_base.smn_item  where smn_base.smn_item.smn_item_id is not null  and smn_base.smn_item.smn_item_id=smn_produccion.smn_rel_formula_item.smn_item_id  order by smn_base.smn_item.itm_nombre asc ) as smn_item_id_combo,
	(select smn_base.smn_unidad_medida.unm_codigo|| ' - ' || smn_base.smn_unidad_medida.unm_descripcion from  smn_base.smn_unidad_medida  where smn_base.smn_unidad_medida.smn_unidad_medida_id is not null  and smn_base.smn_unidad_medida.smn_unidad_medida_id=smn_produccion.smn_rel_formula_item.smn_unidad_medida_rf  order by unm_descripcion ) as smn_unidad_medida_rf_combo,
	smn_produccion.smn_rel_formula_item_materiales.*
from 
	smn_produccion.smn_rel_formula_item_materiales,
	smn_produccion.smn_rel_formula_item
where
	smn_produccion.smn_rel_formula_item_materiales.smn_rel_formula_item_id=smn_produccion.smn_rel_formula_item.smn_rel_formula_item_id and 
	smn_produccion.smn_rel_formula_item.smn_rel_formula_item_id=${fld:id}
