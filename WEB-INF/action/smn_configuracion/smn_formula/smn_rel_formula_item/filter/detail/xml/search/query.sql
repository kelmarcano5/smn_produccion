select	
	smn_produccion.smn_formula.smn_formula_id, 
	smn_produccion.smn_formula.for_idioma as for_idioma_pl0,
	(select smn_produccion.smn_formula.for_codigo ||' - '|| smn_produccion.smn_formula.for_descripcion from  smn_produccion.smn_formula ORDER BY smn_produccion.smn_formula.for_descripcion asc where smn_produccion.smn_formula.smn_formula_id is not null  and smn_produccion.smn_formula.smn_formula_id=smn_produccion.smn_rel_formula_item.smn_formula_id) as smn_formula_id_combo,
	(select smn_base.smn_nivel_estructura.nes_codigo ||' - '|| smn_base.smn_nivel_estructura.nes_nombre from  smn_base.smn_nivel_estructura where smn_base.smn_nivel_estructura.nes_tipo = 'IT'  and smn_base.smn_nivel_estructura.smn_nivel_estructura_id=smn_produccion.smn_rel_formula_item.smn_nivel_estructura_id  order by smn_base.smn_nivel_estructura.nes_nombre asc ) as smn_nivel_estructura_id_combo,
	smn_produccion.smn_rel_formula_item.*
from
	smn_produccion.smn_formula,
	smn_produccion.smn_rel_formula_item 
where
	smn_produccion.smn_formula.smn_formula_id=smn_produccion.smn_rel_formula_item.smn_formula_id 
 and 
	smn_rel_formula_item_id = ${fld:id}
