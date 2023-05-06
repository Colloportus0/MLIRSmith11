module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64) -> !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v3_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.insertvalue %arg8, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.insertvalue %arg9, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.insertvalue %arg10, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %arg11, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.mlir.constant(0 : i64) : i64
    %15 = llvm.mlir.constant(-1 : i64) : i64
    %16 = llvm.mlir.constant(2147483647 : i32) : i32
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.mlir.null : !llvm.ptr<i32>
    %23 = llvm.getelementptr %22[%17] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %24 = llvm.ptrtoint %23 : !llvm.ptr<i32> to i64
    %25 = llvm.mlir.constant(16 : index) : i64
    %26 = llvm.add %24, %25  : i64
    %27 = llvm.call @malloc(%26) : (i64) -> !llvm.ptr<i8>
    %28 = llvm.bitcast %27 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %29 = llvm.ptrtoint %28 : !llvm.ptr<i32> to i64
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.sub %25, %30  : i64
    %32 = llvm.add %29, %31  : i64
    %33 = llvm.urem %32, %25  : i64
    %34 = llvm.sub %32, %33  : i64
    %35 = llvm.inttoptr %34 : i64 to !llvm.ptr<i32>
    %36 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %37 = llvm.insertvalue %28, %36[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %35, %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %17, %40[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %18, %41[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %19, %42[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %20, %43[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %18, %44[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.insertvalue %19, %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.insertvalue %20, %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.insertvalue %21, %47[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%49 : i64)
  ^bb1(%52: i64):  // 2 preds: ^bb0, ^bb11
    %53 = llvm.icmp "slt" %52, %50 : i64
    llvm.cond_br %53, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %54 = llvm.mlir.constant(0 : index) : i64
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%54 : i64)
  ^bb3(%57: i64):  // 2 preds: ^bb2, ^bb10
    %58 = llvm.icmp "slt" %57, %55 : i64
    llvm.cond_br %58, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %59 = llvm.mlir.constant(0 : index) : i64
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%59 : i64)
  ^bb5(%62: i64):  // 2 preds: ^bb4, ^bb9
    %63 = llvm.icmp "slt" %62, %60 : i64
    llvm.cond_br %63, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%64 : i64)
  ^bb7(%67: i64):  // 2 preds: ^bb6, ^bb8
    %68 = llvm.icmp "slt" %67, %65 : i64
    llvm.cond_br %68, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %69 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.add %52, %57  : i64
    %71 = llvm.add %70, %62  : i64
    %72 = llvm.add %71, %67  : i64
    %73 = llvm.getelementptr %69[%72] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %16, %73 : !llvm.ptr<i32>
    %74 = llvm.add %67, %66  : i64
    llvm.br ^bb7(%74 : i64)
  ^bb9:  // pred: ^bb7
    %75 = llvm.add %62, %61  : i64
    llvm.br ^bb5(%75 : i64)
  ^bb10:  // pred: ^bb5
    %76 = llvm.add %57, %56  : i64
    llvm.br ^bb3(%76 : i64)
  ^bb11:  // pred: ^bb3
    %77 = llvm.add %52, %51  : i64
    llvm.br ^bb1(%77 : i64)
  ^bb12:  // pred: ^bb1
    %78 = llvm.mlir.constant(0 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%78 : i64)
  ^bb13(%81: i64):  // 2 preds: ^bb12, ^bb26
    %82 = llvm.icmp "slt" %81, %79 : i64
    llvm.cond_br %82, ^bb14, ^bb27
  ^bb14:  // pred: ^bb13
    %83 = llvm.mlir.constant(0 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%83 : i64)
  ^bb15(%86: i64):  // 2 preds: ^bb14, ^bb25
    %87 = llvm.icmp "slt" %86, %84 : i64
    llvm.cond_br %87, ^bb16, ^bb26
  ^bb16:  // pred: ^bb15
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%88 : i64)
  ^bb17(%91: i64):  // 2 preds: ^bb16, ^bb24
    %92 = llvm.icmp "slt" %91, %89 : i64
    llvm.cond_br %92, ^bb18, ^bb25
  ^bb18:  // pred: ^bb17
    %93 = llvm.mlir.constant(0 : index) : i64
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%93 : i64)
  ^bb19(%96: i64):  // 2 preds: ^bb18, ^bb23
    %97 = llvm.icmp "slt" %96, %94 : i64
    llvm.cond_br %97, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %98 = llvm.mlir.constant(0 : index) : i64
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%98 : i64)
  ^bb21(%101: i64):  // 2 preds: ^bb20, ^bb22
    %102 = llvm.icmp "slt" %101, %99 : i64
    llvm.cond_br %102, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %103 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %104 = llvm.add %81, %86  : i64
    %105 = llvm.add %104, %91  : i64
    %106 = llvm.add %105, %96  : i64
    %107 = llvm.add %106, %101  : i64
    %108 = llvm.getelementptr %103[%107] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %109 = llvm.load %108 : !llvm.ptr<i32>
    %110 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.add %81, %86  : i64
    %112 = llvm.add %111, %96  : i64
    %113 = llvm.add %112, %101  : i64
    %114 = llvm.getelementptr %110[%113] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %115 = llvm.load %114 : !llvm.ptr<i32>
    %116 = llvm.icmp "slt" %115, %109 : i32
    %117 = llvm.select %116, %115, %109 : i1, i32
    %118 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.add %81, %86  : i64
    %120 = llvm.add %119, %96  : i64
    %121 = llvm.add %120, %101  : i64
    %122 = llvm.getelementptr %118[%121] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %117, %122 : !llvm.ptr<i32>
    %123 = llvm.add %101, %100  : i64
    llvm.br ^bb21(%123 : i64)
  ^bb23:  // pred: ^bb21
    %124 = llvm.add %96, %95  : i64
    llvm.br ^bb19(%124 : i64)
  ^bb24:  // pred: ^bb19
    %125 = llvm.add %91, %90  : i64
    llvm.br ^bb17(%125 : i64)
  ^bb25:  // pred: ^bb17
    %126 = llvm.add %86, %85  : i64
    llvm.br ^bb15(%126 : i64)
  ^bb26:  // pred: ^bb15
    %127 = llvm.add %81, %80  : i64
    llvm.br ^bb13(%127 : i64)
  ^bb27:  // pred: ^bb13
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.null : !llvm.ptr<i32>
    %134 = llvm.getelementptr %133[%128] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %135 = llvm.ptrtoint %134 : !llvm.ptr<i32> to i64
    %136 = llvm.mlir.constant(16 : index) : i64
    %137 = llvm.add %135, %136  : i64
    %138 = llvm.call @malloc(%137) : (i64) -> !llvm.ptr<i8>
    %139 = llvm.bitcast %138 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %140 = llvm.ptrtoint %139 : !llvm.ptr<i32> to i64
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.sub %136, %141  : i64
    %143 = llvm.add %140, %142  : i64
    %144 = llvm.urem %143, %136  : i64
    %145 = llvm.sub %143, %144  : i64
    %146 = llvm.inttoptr %145 : i64 to !llvm.ptr<i32>
    %147 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %148 = llvm.insertvalue %139, %147[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.insertvalue %146, %148[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.mlir.constant(0 : index) : i64
    %151 = llvm.insertvalue %150, %149[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.insertvalue %128, %151[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.insertvalue %129, %152[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.insertvalue %130, %153[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.insertvalue %131, %154[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.insertvalue %129, %155[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.insertvalue %130, %156[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.insertvalue %131, %157[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.insertvalue %132, %158[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.mlir.constant(0 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%160 : i64)
  ^bb28(%163: i64):  // 2 preds: ^bb27, ^bb38
    %164 = llvm.icmp "slt" %163, %161 : i64
    llvm.cond_br %164, ^bb29, ^bb39
  ^bb29:  // pred: ^bb28
    %165 = llvm.mlir.constant(0 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%165 : i64)
  ^bb30(%168: i64):  // 2 preds: ^bb29, ^bb37
    %169 = llvm.icmp "slt" %168, %166 : i64
    llvm.cond_br %169, ^bb31, ^bb38
  ^bb31:  // pred: ^bb30
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%170 : i64)
  ^bb32(%173: i64):  // 2 preds: ^bb31, ^bb36
    %174 = llvm.icmp "slt" %173, %171 : i64
    llvm.cond_br %174, ^bb33, ^bb37
  ^bb33:  // pred: ^bb32
    %175 = llvm.mlir.constant(0 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%175 : i64)
  ^bb34(%178: i64):  // 2 preds: ^bb33, ^bb35
    %179 = llvm.icmp "slt" %178, %176 : i64
    llvm.cond_br %179, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %180 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.add %163, %168  : i64
    %182 = llvm.add %181, %173  : i64
    %183 = llvm.add %182, %178  : i64
    %184 = llvm.getelementptr %180[%183] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %185 = llvm.load %184 : !llvm.ptr<i32>
    %186 = llvm.extractvalue %159[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.add %163, %168  : i64
    %188 = llvm.add %187, %173  : i64
    %189 = llvm.add %188, %178  : i64
    %190 = llvm.getelementptr %186[%189] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %185, %190 : !llvm.ptr<i32>
    %191 = llvm.add %178, %177  : i64
    llvm.br ^bb34(%191 : i64)
  ^bb36:  // pred: ^bb34
    %192 = llvm.add %173, %172  : i64
    llvm.br ^bb32(%192 : i64)
  ^bb37:  // pred: ^bb32
    %193 = llvm.add %168, %167  : i64
    llvm.br ^bb30(%193 : i64)
  ^bb38:  // pred: ^bb30
    %194 = llvm.add %163, %162  : i64
    llvm.br ^bb28(%194 : i64)
  ^bb39:  // pred: ^bb28
    %195 = llvm.mlir.constant(1 : index) : i64
    %196 = llvm.mlir.constant(1 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.mlir.null : !llvm.ptr<i64>
    %200 = llvm.getelementptr %199[%195] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %201 = llvm.ptrtoint %200 : !llvm.ptr<i64> to i64
    %202 = llvm.mlir.constant(16 : index) : i64
    %203 = llvm.add %201, %202  : i64
    %204 = llvm.call @malloc(%203) : (i64) -> !llvm.ptr<i8>
    %205 = llvm.bitcast %204 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %206 = llvm.ptrtoint %205 : !llvm.ptr<i64> to i64
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.sub %202, %207  : i64
    %209 = llvm.add %206, %208  : i64
    %210 = llvm.urem %209, %202  : i64
    %211 = llvm.sub %209, %210  : i64
    %212 = llvm.inttoptr %211 : i64 to !llvm.ptr<i64>
    %213 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %214 = llvm.insertvalue %205, %213[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %215 = llvm.insertvalue %212, %214[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %216 = llvm.mlir.constant(0 : index) : i64
    %217 = llvm.insertvalue %216, %215[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %218 = llvm.insertvalue %195, %217[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %219 = llvm.insertvalue %196, %218[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %220 = llvm.insertvalue %197, %219[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %221 = llvm.insertvalue %196, %220[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %222 = llvm.insertvalue %197, %221[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %223 = llvm.insertvalue %198, %222[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %224 = llvm.mlir.constant(0 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%224 : i64)
  ^bb40(%227: i64):  // 2 preds: ^bb39, ^bb47
    %228 = llvm.icmp "slt" %227, %225 : i64
    llvm.cond_br %228, ^bb41, ^bb48
  ^bb41:  // pred: ^bb40
    %229 = llvm.mlir.constant(0 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%229 : i64)
  ^bb42(%232: i64):  // 2 preds: ^bb41, ^bb46
    %233 = llvm.icmp "slt" %232, %230 : i64
    llvm.cond_br %233, ^bb43, ^bb47
  ^bb43:  // pred: ^bb42
    %234 = llvm.mlir.constant(0 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%234 : i64)
  ^bb44(%237: i64):  // 2 preds: ^bb43, ^bb45
    %238 = llvm.icmp "slt" %237, %235 : i64
    llvm.cond_br %238, ^bb45, ^bb46
  ^bb45:  // pred: ^bb44
    %239 = llvm.extractvalue %223[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %240 = llvm.add %227, %232  : i64
    %241 = llvm.add %240, %237  : i64
    %242 = llvm.getelementptr %239[%241] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %15, %242 : !llvm.ptr<i64>
    %243 = llvm.add %237, %236  : i64
    llvm.br ^bb44(%243 : i64)
  ^bb46:  // pred: ^bb44
    %244 = llvm.add %232, %231  : i64
    llvm.br ^bb42(%244 : i64)
  ^bb47:  // pred: ^bb42
    %245 = llvm.add %227, %226  : i64
    llvm.br ^bb40(%245 : i64)
  ^bb48:  // pred: ^bb40
    %246 = llvm.mlir.constant(0 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%246 : i64)
  ^bb49(%249: i64):  // 2 preds: ^bb48, ^bb59
    %250 = llvm.icmp "slt" %249, %247 : i64
    llvm.cond_br %250, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %251 = llvm.mlir.constant(0 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%251 : i64)
  ^bb51(%254: i64):  // 2 preds: ^bb50, ^bb58
    %255 = llvm.icmp "slt" %254, %252 : i64
    llvm.cond_br %255, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %256 = llvm.mlir.constant(0 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%256 : i64)
  ^bb53(%259: i64):  // 2 preds: ^bb52, ^bb57
    %260 = llvm.icmp "slt" %259, %257 : i64
    llvm.cond_br %260, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %261 = llvm.mlir.constant(0 : index) : i64
    %262 = llvm.mlir.constant(1 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%261 : i64)
  ^bb55(%264: i64):  // 2 preds: ^bb54, ^bb56
    %265 = llvm.icmp "slt" %264, %262 : i64
    llvm.cond_br %265, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %266 = llvm.extractvalue %159[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.add %249, %254  : i64
    %268 = llvm.add %267, %259  : i64
    %269 = llvm.add %268, %264  : i64
    %270 = llvm.getelementptr %266[%269] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %271 = llvm.load %270 : !llvm.ptr<i32>
    %272 = llvm.extractvalue %223[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %273 = llvm.add %249, %254  : i64
    %274 = llvm.add %273, %259  : i64
    %275 = llvm.getelementptr %272[%274] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %276 = llvm.load %275 : !llvm.ptr<i64>
    %277 = llvm.icmp "slt" %276, %14 : i64
    %278 = llvm.select %277, %14, %276 : i1, i64
    %279 = llvm.extractvalue %159[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.add %249, %254  : i64
    %281 = llvm.add %280, %259  : i64
    %282 = llvm.add %281, %278  : i64
    %283 = llvm.getelementptr %279[%282] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %284 = llvm.load %283 : !llvm.ptr<i32>
    %285 = llvm.icmp "slt" %271, %284 : i32
    %286 = llvm.select %285, %264, %278 : i1, i64
    %287 = llvm.extractvalue %223[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %288 = llvm.add %249, %254  : i64
    %289 = llvm.add %288, %259  : i64
    %290 = llvm.getelementptr %287[%289] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %286, %290 : !llvm.ptr<i64>
    %291 = llvm.add %264, %263  : i64
    llvm.br ^bb55(%291 : i64)
  ^bb57:  // pred: ^bb55
    %292 = llvm.add %259, %258  : i64
    llvm.br ^bb53(%292 : i64)
  ^bb58:  // pred: ^bb53
    %293 = llvm.add %254, %253  : i64
    llvm.br ^bb51(%293 : i64)
  ^bb59:  // pred: ^bb51
    %294 = llvm.add %249, %248  : i64
    llvm.br ^bb49(%294 : i64)
  ^bb60:  // pred: ^bb49
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.mlir.null : !llvm.ptr<i64>
    %300 = llvm.getelementptr %299[%295] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %301 = llvm.ptrtoint %300 : !llvm.ptr<i64> to i64
    %302 = llvm.mlir.constant(16 : index) : i64
    %303 = llvm.add %301, %302  : i64
    %304 = llvm.call @malloc(%303) : (i64) -> !llvm.ptr<i8>
    %305 = llvm.bitcast %304 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %306 = llvm.ptrtoint %305 : !llvm.ptr<i64> to i64
    %307 = llvm.mlir.constant(1 : index) : i64
    %308 = llvm.sub %302, %307  : i64
    %309 = llvm.add %306, %308  : i64
    %310 = llvm.urem %309, %302  : i64
    %311 = llvm.sub %309, %310  : i64
    %312 = llvm.inttoptr %311 : i64 to !llvm.ptr<i64>
    %313 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %314 = llvm.insertvalue %305, %313[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %315 = llvm.insertvalue %312, %314[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %316 = llvm.mlir.constant(0 : index) : i64
    %317 = llvm.insertvalue %316, %315[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %318 = llvm.insertvalue %295, %317[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %319 = llvm.insertvalue %296, %318[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %320 = llvm.insertvalue %297, %319[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %321 = llvm.insertvalue %296, %320[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %322 = llvm.insertvalue %297, %321[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %323 = llvm.insertvalue %298, %322[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %324 = llvm.mlir.constant(0 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%324 : i64)
  ^bb61(%327: i64):  // 2 preds: ^bb60, ^bb68
    %328 = llvm.icmp "slt" %327, %325 : i64
    llvm.cond_br %328, ^bb62, ^bb69
  ^bb62:  // pred: ^bb61
    %329 = llvm.mlir.constant(0 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%329 : i64)
  ^bb63(%332: i64):  // 2 preds: ^bb62, ^bb67
    %333 = llvm.icmp "slt" %332, %330 : i64
    llvm.cond_br %333, ^bb64, ^bb68
  ^bb64:  // pred: ^bb63
    %334 = llvm.mlir.constant(0 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%334 : i64)
  ^bb65(%337: i64):  // 2 preds: ^bb64, ^bb66
    %338 = llvm.icmp "slt" %337, %335 : i64
    llvm.cond_br %338, ^bb66, ^bb67
  ^bb66:  // pred: ^bb65
    %339 = llvm.extractvalue %223[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %340 = llvm.add %327, %332  : i64
    %341 = llvm.add %340, %337  : i64
    %342 = llvm.getelementptr %339[%341] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %343 = llvm.load %342 : !llvm.ptr<i64>
    %344 = llvm.extractvalue %323[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %345 = llvm.add %327, %332  : i64
    %346 = llvm.add %345, %337  : i64
    %347 = llvm.getelementptr %344[%346] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %343, %347 : !llvm.ptr<i64>
    %348 = llvm.add %337, %336  : i64
    llvm.br ^bb65(%348 : i64)
  ^bb67:  // pred: ^bb65
    %349 = llvm.add %332, %331  : i64
    llvm.br ^bb63(%349 : i64)
  ^bb68:  // pred: ^bb63
    %350 = llvm.add %327, %326  : i64
    llvm.br ^bb61(%350 : i64)
  ^bb69:  // pred: ^bb61
    %351 = llvm.mlir.constant(1 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    %354 = llvm.mlir.constant(1 : index) : i64
    %355 = llvm.mlir.null : !llvm.ptr<i64>
    %356 = llvm.getelementptr %355[%351] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %357 = llvm.ptrtoint %356 : !llvm.ptr<i64> to i64
    %358 = llvm.mlir.constant(16 : index) : i64
    %359 = llvm.add %357, %358  : i64
    %360 = llvm.call @malloc(%359) : (i64) -> !llvm.ptr<i8>
    %361 = llvm.bitcast %360 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %362 = llvm.ptrtoint %361 : !llvm.ptr<i64> to i64
    %363 = llvm.mlir.constant(1 : index) : i64
    %364 = llvm.sub %358, %363  : i64
    %365 = llvm.add %362, %364  : i64
    %366 = llvm.urem %365, %358  : i64
    %367 = llvm.sub %365, %366  : i64
    %368 = llvm.inttoptr %367 : i64 to !llvm.ptr<i64>
    %369 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %370 = llvm.insertvalue %361, %369[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %371 = llvm.insertvalue %368, %370[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %372 = llvm.mlir.constant(0 : index) : i64
    %373 = llvm.insertvalue %372, %371[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %374 = llvm.insertvalue %351, %373[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %375 = llvm.insertvalue %352, %374[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %376 = llvm.insertvalue %353, %375[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %377 = llvm.insertvalue %352, %376[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %378 = llvm.insertvalue %353, %377[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %379 = llvm.insertvalue %354, %378[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %380 = llvm.mlir.constant(0 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    %382 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%380 : i64)
  ^bb70(%383: i64):  // 2 preds: ^bb69, ^bb77
    %384 = llvm.icmp "slt" %383, %381 : i64
    llvm.cond_br %384, ^bb71, ^bb78
  ^bb71:  // pred: ^bb70
    %385 = llvm.mlir.constant(0 : index) : i64
    %386 = llvm.mlir.constant(1 : index) : i64
    %387 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%385 : i64)
  ^bb72(%388: i64):  // 2 preds: ^bb71, ^bb76
    %389 = llvm.icmp "slt" %388, %386 : i64
    llvm.cond_br %389, ^bb73, ^bb77
  ^bb73:  // pred: ^bb72
    %390 = llvm.mlir.constant(0 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%390 : i64)
  ^bb74(%393: i64):  // 2 preds: ^bb73, ^bb75
    %394 = llvm.icmp "slt" %393, %391 : i64
    llvm.cond_br %394, ^bb75, ^bb76
  ^bb75:  // pred: ^bb74
    %395 = llvm.extractvalue %323[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %396 = llvm.add %383, %388  : i64
    %397 = llvm.add %396, %393  : i64
    %398 = llvm.getelementptr %395[%397] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %399 = llvm.load %398 : !llvm.ptr<i64>
    %400 = llvm.sub %14, %399  : i64
    %401 = llvm.extractvalue %379[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %402 = llvm.add %383, %388  : i64
    %403 = llvm.add %402, %393  : i64
    %404 = llvm.getelementptr %401[%403] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %400, %404 : !llvm.ptr<i64>
    %405 = llvm.add %393, %392  : i64
    llvm.br ^bb74(%405 : i64)
  ^bb76:  // pred: ^bb74
    %406 = llvm.add %388, %387  : i64
    llvm.br ^bb72(%406 : i64)
  ^bb77:  // pred: ^bb72
    %407 = llvm.add %383, %382  : i64
    llvm.br ^bb70(%407 : i64)
  ^bb78:  // pred: ^bb70
    llvm.return %379 : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v3_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.extractvalue %0[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.extractvalue %0[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    llvm.store %14, %arg0 : !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %44 = llvm.mlir.constant(4 : i64) : i64
    %45 = llvm.getelementptr %14[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %46 = llvm.load %45 : !llvm.ptr<i64>
    %47 = llvm.insertvalue %46, %43[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.getelementptr %15[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %49 = llvm.load %48 : !llvm.ptr<i64>
    %50 = llvm.insertvalue %49, %47[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %50, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %51 = llvm.load %2 : !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>>
    %52 = llvm.mlir.constant(1 : i64) : i64
    %53 = llvm.mlir.constant(8 : i64) : i64
    %54 = llvm.call @malloc(%53) : (i64) -> !llvm.ptr<i8>
    %55 = llvm.bitcast %54 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %56 = llvm.mlir.constant(3 : i64) : i64
    %57 = llvm.call @omTensorCreateUntyped(%56) : (i64) -> !llvm.ptr<i8>
    %58 = llvm.mlir.constant(1 : i64) : i64
    %59 = llvm.extractvalue %51[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %60 = llvm.bitcast %59 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %61 = llvm.extractvalue %51[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %62 = llvm.bitcast %61 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%57, %58, %60, %62) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %63 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%57, %63) : (!llvm.ptr<i8>, i64) -> ()
    %64 = llvm.call @omTensorGetShape(%57) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %65 = llvm.call @omTensorGetStrides(%57) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %66 = llvm.mlir.constant(0 : i64) : i64
    %67 = llvm.extractvalue %51[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.getelementptr %64[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %51[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %70 = llvm.getelementptr %65[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(1 : i64) : i64
    %72 = llvm.extractvalue %51[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.getelementptr %64[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %51[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.getelementptr %65[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(2 : i64) : i64
    %77 = llvm.extractvalue %51[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %78 = llvm.getelementptr %64[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %51[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %80 = llvm.getelementptr %65[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.getelementptr %55[%81] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %57, %82 : !llvm.ptr<ptr<i8>>
    %83 = llvm.call @omTensorListCreate(%55, %52, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %83 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<76 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<76 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<67 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<67 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

