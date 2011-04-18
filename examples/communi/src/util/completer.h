/*
* Copyright (C) 2008-2010 J-P Nurmi jpnurmi@gmail.com
*
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License along
* with this program; if not, write to the Free Software Foundation, Inc.,
* 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
*
* $Id$
*/

#ifndef COMPLETER_H
#define COMPLETER_H

#include <QCompleter>
class HistoryLineEdit;

class Completer : public QCompleter
{
    Q_OBJECT

public:
    Completer(QObject* parent = 0);

    HistoryLineEdit* lineEdit() const;
    void setLineEdit(HistoryLineEdit* lineEdit);

private slots:
    void onTabPressed();
    void onTextEdited();
    void insertCompletion(const QString& completion);

private:
    struct CompleterData
    {
        HistoryLineEdit* lineEdit;
    } d;
};

#endif // COMPLETER_H