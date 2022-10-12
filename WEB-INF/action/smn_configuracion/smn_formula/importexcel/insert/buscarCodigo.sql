select
		smn_produccion.smn_formula.for_codigo
from
		smn_produccion.smn_formula
where
		upper(smn_produccion.smn_formula.for_codigo) = upper(${fld:for_codigo})
