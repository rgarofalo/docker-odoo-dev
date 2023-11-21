from odoo import fields, models, api, _

class AccountMove(models.Model):
    _inherit = 'account.move'
    
    def write(self, vals):
        my_val = vals
        res = super().write(vals)
        return res