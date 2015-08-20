package com.tobykurien.webapps.adapter

import org.xtendroid.adapter.AndroidAdapter
import android.view.View
import android.view.ViewGroup
import com.tobykurien.webapps.data.Webapp
import java.util.List
import org.xtendroid.adapter.AndroidViewHolder
import com.tobykurien.webapps.R

@AndroidAdapter class WebappsAdapter {
   List<Webapp> webapps

   @AndroidViewHolder(R.layout.row_webapp) static class ViewHolder {      
   }
   
   override getView(int row, View cv, ViewGroup parent) {
      var vh = ViewHolder.getOrCreate(context, cv, parent)
      var app = getItem(row)
      
      vh.name.text = app.name
      vh.url.text = app.url
      
      return vh.view
   }
}