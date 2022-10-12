select
	(select smn_base.smn_activo_fijo.acf_codigo ||' - '|| smn_base.smn_activo_fijo.acf_nombre from  smn_base.smn_activo_fijo  where smn_base.smn_activo_fijo.smn_afijo_id is not null  and smn_base.smn_activo_fijo.smn_afijo_id=smn_produccion.smn_rel_formula_item.smn_funciones_id  order by smn_base.smn_activo_fijo.acf_nombre asc ) as smn_funciones_id_combo,
	(select smn_base.smn_unidad_medida.unm_codigo|| ' - ' || smn_base.smn_unidad_medida.unm_descripcion from  smn_base.smn_unidad_medida  where smn_base.smn_unidad_medida.smn_unidad_medida_id is not null  and smn_base.smn_unidad_medida.smn_unidad_medida_id=smn_produccion.smn_rel_formula_item.smn_unidad_medida_rf  order by unm_descripcion ) as smn_unidad_medida_rf_combo,
	smn_produccion.smn_rel_formula_item_funciones.*
from 
	smn_produccion.smn_rel_formula_item_funciones,
	smn_produccion.smn_rel_formula_item
where
	smn_produccion.smn_rel_formula_item_funciones.smn_rel_formula_item_id=smn_produccion.smn_rel_formula_item.smn_rel_formula_item_id and 
	smn_produccion.smn_rel_formula_item.smn_rel_formula_item_id=${fld:id}
