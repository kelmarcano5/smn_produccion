select
	smn_produccion.smn_rel_formula_item_centro_produccion.smn_rel_formula_item_centro_produccion_id,
	smn_produccion.smn_centro_produccion.smn_centro_produccion_id,
	smn_produccion.smn_centro_produccion.cpr_codigo as cpr_codigo_pl0,
	smn_produccion.smn_linea_produccion.smn_linea_produccion_id,
	smn_produccion.smn_linea_produccion.lpr_codigo as lpr_codigo_pl1,
	smn_produccion.smn_rel_formula_item_centro_produccion.smn_rel_formula_item_id,
	smn_produccion.smn_rel_formula_item_centro_produccion.smn_centro_produccion_id,
	smn_produccion.smn_rel_formula_item_centro_produccion.smn_linea_produccion_id,
	smn_produccion.smn_rel_formula_item_centro_produccion.rfc_fecha_registro
	
from
	smn_produccion.smn_rel_formula_item_centro_produccion
	inner join smn_produccion.smn_centro_produccion on smn_produccion.smn_centro_produccion.smn_centro_produccion_id = smn_produccion.smn_rel_formula_item_centro_produccion.smn_centro_produccion_id
	inner join smn_produccion.smn_rel_formula_item on smn_produccion.smn_rel_formula_item.smn_rel_formula_item_id = smn_produccion.smn_rel_formula_item_centro_produccion.smn_rel_formula_item_id
	inner join smn_produccion.smn_linea_produccion on smn_produccion.smn_linea_produccion.smn_linea_produccion_id = smn_produccion.smn_rel_formula_item_centro_produccion.smn_linea_produccion_id
	
where
	smn_produccion.smn_rel_formula_item_centro_produccion.smn_rel_formula_item_id=${fld:id2}