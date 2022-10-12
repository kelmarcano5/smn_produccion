select
		smn_produccion.smn_formula.for_descripcion
from
		smn_produccion.smn_formula
where
		upper(smn_produccion.smn_formula.for_descripcion) = upper(${fld:for_descripcion})
