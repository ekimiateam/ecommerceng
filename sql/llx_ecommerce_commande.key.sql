-- ===================================================================
-- Copyright (C) 2010 Auguria <franck.charpentier@auguria.net>
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 2 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
--
-- ===================================================================
ALTER TABLE llx_ecommerce_commande  ADD INDEX idx_ecommerce_commande_fk_commande ( fk_commande );
ALTER TABLE llx_ecommerce_commande  ADD INDEX idx_ecommerce_commande_fk_site ( fk_site );
ALTER TABLE llx_ecommerce_commande  ADD UNIQUE KEY uk_ecommerce_commande_fk_site_fk_commande ( fk_site ,fk_commande );
ALTER TABLE llx_ecommerce_commande  ADD UNIQUE KEY uk_ecommerce_commande_fk_site_remote_id ( fk_site ,remote_id );
--ALTER TABLE llx_ecommerce_commande  ADD CONSTRAINT fk_ecommerce_commande_fk_commande FOREIGN KEY (fk_commande) REFERENCES llx_commande(rowid);