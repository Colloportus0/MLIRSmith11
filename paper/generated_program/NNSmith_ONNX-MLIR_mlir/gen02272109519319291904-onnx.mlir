module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 5] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v4_0", "v0_0", "v5_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(-2147483648 : i32) : i32
    %13 = llvm.mlir.constant(0 : i32) : i32
    %14 = llvm.mlir.constant(2147483647 : i32) : i32
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.mlir.null : !llvm.ptr<i32>
    %20 = llvm.getelementptr %19[%15] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %21 = llvm.ptrtoint %20 : !llvm.ptr<i32> to i64
    %22 = llvm.mlir.constant(16 : index) : i64
    %23 = llvm.add %21, %22  : i64
    %24 = llvm.call @malloc(%23) : (i64) -> !llvm.ptr<i8>
    %25 = llvm.bitcast %24 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %26 = llvm.ptrtoint %25 : !llvm.ptr<i32> to i64
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.sub %22, %27  : i64
    %29 = llvm.add %26, %28  : i64
    %30 = llvm.urem %29, %22  : i64
    %31 = llvm.sub %29, %30  : i64
    %32 = llvm.inttoptr %31 : i64 to !llvm.ptr<i32>
    %33 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %34 = llvm.insertvalue %25, %33[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.insertvalue %36, %35[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %38 = llvm.insertvalue %15, %37[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %39 = llvm.insertvalue %16, %38[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %40 = llvm.insertvalue %17, %39[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %41 = llvm.insertvalue %16, %40[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %42 = llvm.insertvalue %17, %41[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %43 = llvm.insertvalue %18, %42[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %44 = llvm.mlir.constant(0 : index) : i64
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%44 : i64)
  ^bb1(%47: i64):  // 2 preds: ^bb0, ^bb8
    %48 = llvm.icmp "slt" %47, %45 : i64
    llvm.cond_br %48, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%49 : i64)
  ^bb3(%52: i64):  // 2 preds: ^bb2, ^bb7
    %53 = llvm.icmp "slt" %52, %50 : i64
    llvm.cond_br %53, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %54 = llvm.mlir.constant(0 : index) : i64
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%54 : i64)
  ^bb5(%57: i64):  // 2 preds: ^bb4, ^bb6
    %58 = llvm.icmp "slt" %57, %55 : i64
    llvm.cond_br %58, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %59 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %60 = llvm.add %47, %52  : i64
    %61 = llvm.add %60, %57  : i64
    %62 = llvm.getelementptr %59[%61] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %14, %62 : !llvm.ptr<i32>
    %63 = llvm.add %57, %56  : i64
    llvm.br ^bb5(%63 : i64)
  ^bb7:  // pred: ^bb5
    %64 = llvm.add %52, %51  : i64
    llvm.br ^bb3(%64 : i64)
  ^bb8:  // pred: ^bb3
    %65 = llvm.add %47, %46  : i64
    llvm.br ^bb1(%65 : i64)
  ^bb9:  // pred: ^bb1
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%66 : i64)
  ^bb10(%69: i64):  // 2 preds: ^bb9, ^bb20
    %70 = llvm.icmp "slt" %69, %67 : i64
    llvm.cond_br %70, ^bb11, ^bb21
  ^bb11:  // pred: ^bb10
    %71 = llvm.mlir.constant(0 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%71 : i64)
  ^bb12(%74: i64):  // 2 preds: ^bb11, ^bb19
    %75 = llvm.icmp "slt" %74, %72 : i64
    llvm.cond_br %75, ^bb13, ^bb20
  ^bb13:  // pred: ^bb12
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%76 : i64)
  ^bb14(%79: i64):  // 2 preds: ^bb13, ^bb18
    %80 = llvm.icmp "slt" %79, %77 : i64
    llvm.cond_br %80, ^bb15, ^bb19
  ^bb15:  // pred: ^bb14
    %81 = llvm.mlir.constant(0 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%81 : i64)
  ^bb16(%84: i64):  // 2 preds: ^bb15, ^bb17
    %85 = llvm.icmp "slt" %84, %82 : i64
    llvm.cond_br %85, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %86 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.add %69, %74  : i64
    %88 = llvm.add %87, %79  : i64
    %89 = llvm.add %88, %84  : i64
    %90 = llvm.getelementptr %86[%89] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %91 = llvm.load %90 : !llvm.ptr<i32>
    %92 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %93 = llvm.add %69, %79  : i64
    %94 = llvm.add %93, %84  : i64
    %95 = llvm.getelementptr %92[%94] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %96 = llvm.load %95 : !llvm.ptr<i32>
    %97 = llvm.icmp "slt" %96, %91 : i32
    %98 = llvm.select %97, %96, %91 : i1, i32
    %99 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %100 = llvm.add %69, %79  : i64
    %101 = llvm.add %100, %84  : i64
    %102 = llvm.getelementptr %99[%101] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %98, %102 : !llvm.ptr<i32>
    %103 = llvm.add %84, %83  : i64
    llvm.br ^bb16(%103 : i64)
  ^bb18:  // pred: ^bb16
    %104 = llvm.add %79, %78  : i64
    llvm.br ^bb14(%104 : i64)
  ^bb19:  // pred: ^bb14
    %105 = llvm.add %74, %73  : i64
    llvm.br ^bb12(%105 : i64)
  ^bb20:  // pred: ^bb12
    %106 = llvm.add %69, %68  : i64
    llvm.br ^bb10(%106 : i64)
  ^bb21:  // pred: ^bb10
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.mlir.constant(5 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.mlir.constant(5 : index) : i64
    %112 = llvm.mlir.constant(5 : index) : i64
    %113 = llvm.mlir.null : !llvm.ptr<i32>
    %114 = llvm.getelementptr %113[%112] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %115 = llvm.ptrtoint %114 : !llvm.ptr<i32> to i64
    %116 = llvm.mlir.constant(16 : index) : i64
    %117 = llvm.add %115, %116  : i64
    %118 = llvm.call @malloc(%117) : (i64) -> !llvm.ptr<i8>
    %119 = llvm.bitcast %118 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %120 = llvm.ptrtoint %119 : !llvm.ptr<i32> to i64
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.sub %116, %121  : i64
    %123 = llvm.add %120, %122  : i64
    %124 = llvm.urem %123, %116  : i64
    %125 = llvm.sub %123, %124  : i64
    %126 = llvm.inttoptr %125 : i64 to !llvm.ptr<i32>
    %127 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %128 = llvm.insertvalue %119, %127[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %129 = llvm.insertvalue %126, %128[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %130 = llvm.mlir.constant(0 : index) : i64
    %131 = llvm.insertvalue %130, %129[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %132 = llvm.insertvalue %107, %131[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %133 = llvm.insertvalue %108, %132[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %134 = llvm.insertvalue %109, %133[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %135 = llvm.insertvalue %111, %134[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %136 = llvm.insertvalue %109, %135[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %137 = llvm.insertvalue %110, %136[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %138 = llvm.mlir.constant(0 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%138 : i64)
  ^bb22(%141: i64):  // 2 preds: ^bb21, ^bb29
    %142 = llvm.icmp "slt" %141, %139 : i64
    llvm.cond_br %142, ^bb23, ^bb30
  ^bb23:  // pred: ^bb22
    %143 = llvm.mlir.constant(0 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%143 : i64)
  ^bb24(%146: i64):  // 2 preds: ^bb23, ^bb28
    %147 = llvm.icmp "slt" %146, %144 : i64
    llvm.cond_br %147, ^bb25, ^bb29
  ^bb25:  // pred: ^bb24
    %148 = llvm.mlir.constant(0 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%148 : i64)
  ^bb26(%151: i64):  // 2 preds: ^bb25, ^bb27
    %152 = llvm.icmp "slt" %151, %149 : i64
    llvm.cond_br %152, ^bb27, ^bb28
  ^bb27:  // pred: ^bb26
    %153 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %154 = llvm.add %141, %146  : i64
    %155 = llvm.add %154, %151  : i64
    %156 = llvm.getelementptr %153[%155] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %157 = llvm.load %156 : !llvm.ptr<i32>
    %158 = llvm.extractvalue %137[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %159 = llvm.mlir.constant(5 : index) : i64
    %160 = llvm.mul %141, %159  : i64
    %161 = llvm.mlir.constant(5 : index) : i64
    %162 = llvm.mul %146, %161  : i64
    %163 = llvm.add %160, %162  : i64
    %164 = llvm.add %163, %151  : i64
    %165 = llvm.getelementptr %158[%164] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %157, %165 : !llvm.ptr<i32>
    %166 = llvm.add %151, %150  : i64
    llvm.br ^bb26(%166 : i64)
  ^bb28:  // pred: ^bb26
    %167 = llvm.add %146, %145  : i64
    llvm.br ^bb24(%167 : i64)
  ^bb29:  // pred: ^bb24
    %168 = llvm.add %141, %140  : i64
    llvm.br ^bb22(%168 : i64)
  ^bb30:  // pred: ^bb22
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%169 : i64)
  ^bb31(%172: i64):  // 2 preds: ^bb30, ^bb38
    %173 = llvm.icmp "slt" %172, %170 : i64
    llvm.cond_br %173, ^bb32, ^bb39
  ^bb32:  // pred: ^bb31
    %174 = llvm.mlir.constant(0 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%174 : i64)
  ^bb33(%177: i64):  // 2 preds: ^bb32, ^bb37
    %178 = llvm.icmp "slt" %177, %175 : i64
    llvm.cond_br %178, ^bb34, ^bb38
  ^bb34:  // pred: ^bb33
    %179 = llvm.mlir.constant(0 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb35(%179 : i64)
  ^bb35(%182: i64):  // 2 preds: ^bb34, ^bb36
    %183 = llvm.icmp "slt" %182, %180 : i64
    llvm.cond_br %183, ^bb36, ^bb37
  ^bb36:  // pred: ^bb35
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.add %182, %184  : i64
    %186 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %187 = llvm.add %172, %177  : i64
    %188 = llvm.add %187, %182  : i64
    %189 = llvm.getelementptr %186[%188] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %190 = llvm.load %189 : !llvm.ptr<i32>
    %191 = llvm.extractvalue %137[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %192 = llvm.mlir.constant(5 : index) : i64
    %193 = llvm.mul %172, %192  : i64
    %194 = llvm.mlir.constant(5 : index) : i64
    %195 = llvm.mul %177, %194  : i64
    %196 = llvm.add %193, %195  : i64
    %197 = llvm.add %196, %185  : i64
    %198 = llvm.getelementptr %191[%197] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %190, %198 : !llvm.ptr<i32>
    %199 = llvm.add %182, %181  : i64
    llvm.br ^bb35(%199 : i64)
  ^bb37:  // pred: ^bb35
    %200 = llvm.add %177, %176  : i64
    llvm.br ^bb33(%200 : i64)
  ^bb38:  // pred: ^bb33
    %201 = llvm.add %172, %171  : i64
    llvm.br ^bb31(%201 : i64)
  ^bb39:  // pred: ^bb31
    %202 = llvm.mlir.constant(0 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%202 : i64)
  ^bb40(%205: i64):  // 2 preds: ^bb39, ^bb47
    %206 = llvm.icmp "slt" %205, %203 : i64
    llvm.cond_br %206, ^bb41, ^bb48
  ^bb41:  // pred: ^bb40
    %207 = llvm.mlir.constant(0 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%207 : i64)
  ^bb42(%210: i64):  // 2 preds: ^bb41, ^bb46
    %211 = llvm.icmp "slt" %210, %208 : i64
    llvm.cond_br %211, ^bb43, ^bb47
  ^bb43:  // pred: ^bb42
    %212 = llvm.mlir.constant(0 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%212 : i64)
  ^bb44(%215: i64):  // 2 preds: ^bb43, ^bb45
    %216 = llvm.icmp "slt" %215, %213 : i64
    llvm.cond_br %216, ^bb45, ^bb46
  ^bb45:  // pred: ^bb44
    %217 = llvm.mlir.constant(2 : index) : i64
    %218 = llvm.add %215, %217  : i64
    %219 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %220 = llvm.add %205, %210  : i64
    %221 = llvm.add %220, %215  : i64
    %222 = llvm.getelementptr %219[%221] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %223 = llvm.load %222 : !llvm.ptr<i32>
    %224 = llvm.extractvalue %137[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %225 = llvm.mlir.constant(5 : index) : i64
    %226 = llvm.mul %205, %225  : i64
    %227 = llvm.mlir.constant(5 : index) : i64
    %228 = llvm.mul %210, %227  : i64
    %229 = llvm.add %226, %228  : i64
    %230 = llvm.add %229, %218  : i64
    %231 = llvm.getelementptr %224[%230] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %223, %231 : !llvm.ptr<i32>
    %232 = llvm.add %215, %214  : i64
    llvm.br ^bb44(%232 : i64)
  ^bb46:  // pred: ^bb44
    %233 = llvm.add %210, %209  : i64
    llvm.br ^bb42(%233 : i64)
  ^bb47:  // pred: ^bb42
    %234 = llvm.add %205, %204  : i64
    llvm.br ^bb40(%234 : i64)
  ^bb48:  // pred: ^bb40
    %235 = llvm.mlir.constant(0 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%235 : i64)
  ^bb49(%238: i64):  // 2 preds: ^bb48, ^bb56
    %239 = llvm.icmp "slt" %238, %236 : i64
    llvm.cond_br %239, ^bb50, ^bb57
  ^bb50:  // pred: ^bb49
    %240 = llvm.mlir.constant(0 : index) : i64
    %241 = llvm.mlir.constant(1 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%240 : i64)
  ^bb51(%243: i64):  // 2 preds: ^bb50, ^bb55
    %244 = llvm.icmp "slt" %243, %241 : i64
    llvm.cond_br %244, ^bb52, ^bb56
  ^bb52:  // pred: ^bb51
    %245 = llvm.mlir.constant(0 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%245 : i64)
  ^bb53(%248: i64):  // 2 preds: ^bb52, ^bb54
    %249 = llvm.icmp "slt" %248, %246 : i64
    llvm.cond_br %249, ^bb54, ^bb55
  ^bb54:  // pred: ^bb53
    %250 = llvm.mlir.constant(3 : index) : i64
    %251 = llvm.add %248, %250  : i64
    %252 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %253 = llvm.add %238, %243  : i64
    %254 = llvm.add %253, %248  : i64
    %255 = llvm.getelementptr %252[%254] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %256 = llvm.load %255 : !llvm.ptr<i32>
    %257 = llvm.extractvalue %137[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %258 = llvm.mlir.constant(5 : index) : i64
    %259 = llvm.mul %238, %258  : i64
    %260 = llvm.mlir.constant(5 : index) : i64
    %261 = llvm.mul %243, %260  : i64
    %262 = llvm.add %259, %261  : i64
    %263 = llvm.add %262, %251  : i64
    %264 = llvm.getelementptr %257[%263] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %256, %264 : !llvm.ptr<i32>
    %265 = llvm.add %248, %247  : i64
    llvm.br ^bb53(%265 : i64)
  ^bb55:  // pred: ^bb53
    %266 = llvm.add %243, %242  : i64
    llvm.br ^bb51(%266 : i64)
  ^bb56:  // pred: ^bb51
    %267 = llvm.add %238, %237  : i64
    llvm.br ^bb49(%267 : i64)
  ^bb57:  // pred: ^bb49
    %268 = llvm.mlir.constant(0 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%268 : i64)
  ^bb58(%271: i64):  // 2 preds: ^bb57, ^bb65
    %272 = llvm.icmp "slt" %271, %269 : i64
    llvm.cond_br %272, ^bb59, ^bb66
  ^bb59:  // pred: ^bb58
    %273 = llvm.mlir.constant(0 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%273 : i64)
  ^bb60(%276: i64):  // 2 preds: ^bb59, ^bb64
    %277 = llvm.icmp "slt" %276, %274 : i64
    llvm.cond_br %277, ^bb61, ^bb65
  ^bb61:  // pred: ^bb60
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%278 : i64)
  ^bb62(%281: i64):  // 2 preds: ^bb61, ^bb63
    %282 = llvm.icmp "slt" %281, %279 : i64
    llvm.cond_br %282, ^bb63, ^bb64
  ^bb63:  // pred: ^bb62
    %283 = llvm.mlir.constant(4 : index) : i64
    %284 = llvm.add %281, %283  : i64
    %285 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %286 = llvm.add %271, %276  : i64
    %287 = llvm.add %286, %281  : i64
    %288 = llvm.getelementptr %285[%287] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %289 = llvm.load %288 : !llvm.ptr<i32>
    %290 = llvm.extractvalue %137[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %291 = llvm.mlir.constant(5 : index) : i64
    %292 = llvm.mul %271, %291  : i64
    %293 = llvm.mlir.constant(5 : index) : i64
    %294 = llvm.mul %276, %293  : i64
    %295 = llvm.add %292, %294  : i64
    %296 = llvm.add %295, %284  : i64
    %297 = llvm.getelementptr %290[%296] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %289, %297 : !llvm.ptr<i32>
    %298 = llvm.add %281, %280  : i64
    llvm.br ^bb62(%298 : i64)
  ^bb64:  // pred: ^bb62
    %299 = llvm.add %276, %275  : i64
    llvm.br ^bb60(%299 : i64)
  ^bb65:  // pred: ^bb60
    %300 = llvm.add %271, %270  : i64
    llvm.br ^bb58(%300 : i64)
  ^bb66:  // pred: ^bb58
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.mlir.constant(1 : index) : i64
    %303 = llvm.mlir.constant(1 : index) : i64
    %304 = llvm.mlir.constant(1 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    %306 = llvm.mlir.null : !llvm.ptr<i1>
    %307 = llvm.getelementptr %306[%301] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %308 = llvm.ptrtoint %307 : !llvm.ptr<i1> to i64
    %309 = llvm.mlir.constant(16 : index) : i64
    %310 = llvm.add %308, %309  : i64
    %311 = llvm.call @malloc(%310) : (i64) -> !llvm.ptr<i8>
    %312 = llvm.bitcast %311 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %313 = llvm.ptrtoint %312 : !llvm.ptr<i1> to i64
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.sub %309, %314  : i64
    %316 = llvm.add %313, %315  : i64
    %317 = llvm.urem %316, %309  : i64
    %318 = llvm.sub %316, %317  : i64
    %319 = llvm.inttoptr %318 : i64 to !llvm.ptr<i1>
    %320 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %321 = llvm.insertvalue %312, %320[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %322 = llvm.insertvalue %319, %321[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %323 = llvm.mlir.constant(0 : index) : i64
    %324 = llvm.insertvalue %323, %322[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %325 = llvm.insertvalue %301, %324[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.insertvalue %302, %325[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.insertvalue %303, %326[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %328 = llvm.insertvalue %304, %327[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.insertvalue %302, %328[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %330 = llvm.insertvalue %303, %329[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %331 = llvm.insertvalue %304, %330[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.insertvalue %305, %331[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %333 = llvm.mlir.constant(0 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%333 : i64)
  ^bb67(%336: i64):  // 2 preds: ^bb66, ^bb77
    %337 = llvm.icmp "slt" %336, %334 : i64
    llvm.cond_br %337, ^bb68, ^bb78
  ^bb68:  // pred: ^bb67
    %338 = llvm.mlir.constant(0 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    %340 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb69(%338 : i64)
  ^bb69(%341: i64):  // 2 preds: ^bb68, ^bb76
    %342 = llvm.icmp "slt" %341, %339 : i64
    llvm.cond_br %342, ^bb70, ^bb77
  ^bb70:  // pred: ^bb69
    %343 = llvm.mlir.constant(0 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    %345 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb71(%343 : i64)
  ^bb71(%346: i64):  // 2 preds: ^bb70, ^bb75
    %347 = llvm.icmp "slt" %346, %344 : i64
    llvm.cond_br %347, ^bb72, ^bb76
  ^bb72:  // pred: ^bb71
    %348 = llvm.mlir.constant(0 : index) : i64
    %349 = llvm.mlir.constant(1 : index) : i64
    %350 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%348 : i64)
  ^bb73(%351: i64):  // 2 preds: ^bb72, ^bb74
    %352 = llvm.icmp "slt" %351, %349 : i64
    llvm.cond_br %352, ^bb74, ^bb75
  ^bb74:  // pred: ^bb73
    %353 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %354 = llvm.add %336, %341  : i64
    %355 = llvm.add %354, %346  : i64
    %356 = llvm.add %355, %351  : i64
    %357 = llvm.getelementptr %353[%356] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %358 = llvm.load %357 : !llvm.ptr<i32>
    %359 = llvm.icmp "ne" %358, %13 : i32
    %360 = llvm.extractvalue %332[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.add %336, %341  : i64
    %362 = llvm.add %361, %346  : i64
    %363 = llvm.add %362, %351  : i64
    %364 = llvm.getelementptr %360[%363] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %359, %364 : !llvm.ptr<i1>
    %365 = llvm.add %351, %350  : i64
    llvm.br ^bb73(%365 : i64)
  ^bb75:  // pred: ^bb73
    %366 = llvm.add %346, %345  : i64
    llvm.br ^bb71(%366 : i64)
  ^bb76:  // pred: ^bb71
    %367 = llvm.add %341, %340  : i64
    llvm.br ^bb69(%367 : i64)
  ^bb77:  // pred: ^bb69
    %368 = llvm.add %336, %335  : i64
    llvm.br ^bb67(%368 : i64)
  ^bb78:  // pred: ^bb67
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.mlir.constant(1 : index) : i64
    %371 = llvm.mlir.constant(1 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    %373 = llvm.mlir.constant(1 : index) : i64
    %374 = llvm.mlir.null : !llvm.ptr<i32>
    %375 = llvm.getelementptr %374[%369] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %376 = llvm.ptrtoint %375 : !llvm.ptr<i32> to i64
    %377 = llvm.mlir.constant(16 : index) : i64
    %378 = llvm.add %376, %377  : i64
    %379 = llvm.call @malloc(%378) : (i64) -> !llvm.ptr<i8>
    %380 = llvm.bitcast %379 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %381 = llvm.ptrtoint %380 : !llvm.ptr<i32> to i64
    %382 = llvm.mlir.constant(1 : index) : i64
    %383 = llvm.sub %377, %382  : i64
    %384 = llvm.add %381, %383  : i64
    %385 = llvm.urem %384, %377  : i64
    %386 = llvm.sub %384, %385  : i64
    %387 = llvm.inttoptr %386 : i64 to !llvm.ptr<i32>
    %388 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %389 = llvm.insertvalue %380, %388[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %390 = llvm.insertvalue %387, %389[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %391 = llvm.mlir.constant(0 : index) : i64
    %392 = llvm.insertvalue %391, %390[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %393 = llvm.insertvalue %369, %392[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.insertvalue %370, %393[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.insertvalue %371, %394[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %396 = llvm.insertvalue %372, %395[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.insertvalue %370, %396[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %398 = llvm.insertvalue %371, %397[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.insertvalue %372, %398[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %400 = llvm.insertvalue %373, %399[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %401 = llvm.mlir.constant(0 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%401 : i64)
  ^bb79(%404: i64):  // 2 preds: ^bb78, ^bb89
    %405 = llvm.icmp "slt" %404, %402 : i64
    llvm.cond_br %405, ^bb80, ^bb90
  ^bb80:  // pred: ^bb79
    %406 = llvm.mlir.constant(0 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb81(%406 : i64)
  ^bb81(%409: i64):  // 2 preds: ^bb80, ^bb88
    %410 = llvm.icmp "slt" %409, %407 : i64
    llvm.cond_br %410, ^bb82, ^bb89
  ^bb82:  // pred: ^bb81
    %411 = llvm.mlir.constant(0 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    %413 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb83(%411 : i64)
  ^bb83(%414: i64):  // 2 preds: ^bb82, ^bb87
    %415 = llvm.icmp "slt" %414, %412 : i64
    llvm.cond_br %415, ^bb84, ^bb88
  ^bb84:  // pred: ^bb83
    %416 = llvm.mlir.constant(0 : index) : i64
    %417 = llvm.mlir.constant(1 : index) : i64
    %418 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%416 : i64)
  ^bb85(%419: i64):  // 2 preds: ^bb84, ^bb86
    %420 = llvm.icmp "slt" %419, %417 : i64
    llvm.cond_br %420, ^bb86, ^bb87
  ^bb86:  // pred: ^bb85
    %421 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %422 = llvm.add %404, %409  : i64
    %423 = llvm.add %422, %414  : i64
    %424 = llvm.add %423, %419  : i64
    %425 = llvm.getelementptr %421[%424] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %426 = llvm.load %425 : !llvm.ptr<i32>
    %427 = llvm.mlir.constant(false) : i1
    %428 = "llvm.intr.abs"(%426, %427) : (i32, i1) -> i32
    %429 = llvm.extractvalue %400[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.add %404, %409  : i64
    %431 = llvm.add %430, %414  : i64
    %432 = llvm.add %431, %419  : i64
    %433 = llvm.getelementptr %429[%432] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %428, %433 : !llvm.ptr<i32>
    %434 = llvm.add %419, %418  : i64
    llvm.br ^bb85(%434 : i64)
  ^bb87:  // pred: ^bb85
    %435 = llvm.add %414, %413  : i64
    llvm.br ^bb83(%435 : i64)
  ^bb88:  // pred: ^bb83
    %436 = llvm.add %409, %408  : i64
    llvm.br ^bb81(%436 : i64)
  ^bb89:  // pred: ^bb81
    %437 = llvm.add %404, %403  : i64
    llvm.br ^bb79(%437 : i64)
  ^bb90:  // pred: ^bb79
    %438 = llvm.mlir.constant(1 : index) : i64
    %439 = llvm.mlir.constant(1 : index) : i64
    %440 = llvm.mlir.constant(1 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    %442 = llvm.mlir.null : !llvm.ptr<i32>
    %443 = llvm.getelementptr %442[%438] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %444 = llvm.ptrtoint %443 : !llvm.ptr<i32> to i64
    %445 = llvm.mlir.constant(16 : index) : i64
    %446 = llvm.add %444, %445  : i64
    %447 = llvm.call @malloc(%446) : (i64) -> !llvm.ptr<i8>
    %448 = llvm.bitcast %447 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %449 = llvm.ptrtoint %448 : !llvm.ptr<i32> to i64
    %450 = llvm.mlir.constant(1 : index) : i64
    %451 = llvm.sub %445, %450  : i64
    %452 = llvm.add %449, %451  : i64
    %453 = llvm.urem %452, %445  : i64
    %454 = llvm.sub %452, %453  : i64
    %455 = llvm.inttoptr %454 : i64 to !llvm.ptr<i32>
    %456 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %457 = llvm.insertvalue %448, %456[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %458 = llvm.insertvalue %455, %457[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %459 = llvm.mlir.constant(0 : index) : i64
    %460 = llvm.insertvalue %459, %458[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %461 = llvm.insertvalue %438, %460[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %462 = llvm.insertvalue %439, %461[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %463 = llvm.insertvalue %440, %462[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %464 = llvm.insertvalue %439, %463[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %465 = llvm.insertvalue %440, %464[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %466 = llvm.insertvalue %441, %465[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %467 = llvm.mlir.constant(0 : index) : i64
    %468 = llvm.mlir.constant(1 : index) : i64
    %469 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%467 : i64)
  ^bb91(%470: i64):  // 2 preds: ^bb90, ^bb98
    %471 = llvm.icmp "slt" %470, %468 : i64
    llvm.cond_br %471, ^bb92, ^bb99
  ^bb92:  // pred: ^bb91
    %472 = llvm.mlir.constant(0 : index) : i64
    %473 = llvm.mlir.constant(1 : index) : i64
    %474 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb93(%472 : i64)
  ^bb93(%475: i64):  // 2 preds: ^bb92, ^bb97
    %476 = llvm.icmp "slt" %475, %473 : i64
    llvm.cond_br %476, ^bb94, ^bb98
  ^bb94:  // pred: ^bb93
    %477 = llvm.mlir.constant(0 : index) : i64
    %478 = llvm.mlir.constant(1 : index) : i64
    %479 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb95(%477 : i64)
  ^bb95(%480: i64):  // 2 preds: ^bb94, ^bb96
    %481 = llvm.icmp "slt" %480, %478 : i64
    llvm.cond_br %481, ^bb96, ^bb97
  ^bb96:  // pred: ^bb95
    %482 = llvm.extractvalue %466[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %483 = llvm.add %470, %475  : i64
    %484 = llvm.add %483, %480  : i64
    %485 = llvm.getelementptr %482[%484] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %12, %485 : !llvm.ptr<i32>
    %486 = llvm.add %480, %479  : i64
    llvm.br ^bb95(%486 : i64)
  ^bb97:  // pred: ^bb95
    %487 = llvm.add %475, %474  : i64
    llvm.br ^bb93(%487 : i64)
  ^bb98:  // pred: ^bb93
    %488 = llvm.add %470, %469  : i64
    llvm.br ^bb91(%488 : i64)
  ^bb99:  // pred: ^bb91
    %489 = llvm.mlir.constant(0 : index) : i64
    %490 = llvm.mlir.constant(1 : index) : i64
    %491 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb100(%489 : i64)
  ^bb100(%492: i64):  // 2 preds: ^bb99, ^bb110
    %493 = llvm.icmp "slt" %492, %490 : i64
    llvm.cond_br %493, ^bb101, ^bb111
  ^bb101:  // pred: ^bb100
    %494 = llvm.mlir.constant(0 : index) : i64
    %495 = llvm.mlir.constant(1 : index) : i64
    %496 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb102(%494 : i64)
  ^bb102(%497: i64):  // 2 preds: ^bb101, ^bb109
    %498 = llvm.icmp "slt" %497, %495 : i64
    llvm.cond_br %498, ^bb103, ^bb110
  ^bb103:  // pred: ^bb102
    %499 = llvm.mlir.constant(0 : index) : i64
    %500 = llvm.mlir.constant(1 : index) : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb104(%499 : i64)
  ^bb104(%502: i64):  // 2 preds: ^bb103, ^bb108
    %503 = llvm.icmp "slt" %502, %500 : i64
    llvm.cond_br %503, ^bb105, ^bb109
  ^bb105:  // pred: ^bb104
    %504 = llvm.mlir.constant(0 : index) : i64
    %505 = llvm.mlir.constant(1 : index) : i64
    %506 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb106(%504 : i64)
  ^bb106(%507: i64):  // 2 preds: ^bb105, ^bb107
    %508 = llvm.icmp "slt" %507, %505 : i64
    llvm.cond_br %508, ^bb107, ^bb108
  ^bb107:  // pred: ^bb106
    %509 = llvm.extractvalue %400[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %510 = llvm.add %492, %497  : i64
    %511 = llvm.add %510, %502  : i64
    %512 = llvm.add %511, %507  : i64
    %513 = llvm.getelementptr %509[%512] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %514 = llvm.load %513 : !llvm.ptr<i32>
    %515 = llvm.extractvalue %466[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %516 = llvm.add %492, %497  : i64
    %517 = llvm.add %516, %502  : i64
    %518 = llvm.getelementptr %515[%517] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %519 = llvm.load %518 : !llvm.ptr<i32>
    %520 = llvm.icmp "sgt" %519, %514 : i32
    %521 = llvm.select %520, %519, %514 : i1, i32
    %522 = llvm.extractvalue %466[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %523 = llvm.add %492, %497  : i64
    %524 = llvm.add %523, %502  : i64
    %525 = llvm.getelementptr %522[%524] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %521, %525 : !llvm.ptr<i32>
    %526 = llvm.add %507, %506  : i64
    llvm.br ^bb106(%526 : i64)
  ^bb108:  // pred: ^bb106
    %527 = llvm.add %502, %501  : i64
    llvm.br ^bb104(%527 : i64)
  ^bb109:  // pred: ^bb104
    %528 = llvm.add %497, %496  : i64
    llvm.br ^bb102(%528 : i64)
  ^bb110:  // pred: ^bb102
    %529 = llvm.add %492, %491  : i64
    llvm.br ^bb100(%529 : i64)
  ^bb111:  // pred: ^bb100
    %530 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    %531 = llvm.insertvalue %137, %530[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %532 = llvm.insertvalue %332, %531[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %533 = llvm.insertvalue %466, %532[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %533 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v4_0", "v0_0", "v5_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(3 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(0 : i64) : i64
    %78 = llvm.getelementptr %51[%77] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %78 : !llvm.ptr<ptr<i8>>
    %79 = llvm.mlir.constant(4 : i64) : i64
    %80 = llvm.call @omTensorCreateUntyped(%79) : (i64) -> !llvm.ptr<i8>
    %81 = llvm.mlir.constant(1 : i64) : i64
    %82 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.bitcast %82 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %84 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.bitcast %84 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%80, %81, %83, %85) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %86 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%80, %86) : (!llvm.ptr<i8>, i64) -> ()
    %87 = llvm.call @omTensorGetShape(%80) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.call @omTensorGetStrides(%80) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %89 = llvm.mlir.constant(0 : i64) : i64
    %90 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.getelementptr %87[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %90, %91 : !llvm.ptr<i64>
    %92 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.getelementptr %88[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.mlir.constant(1 : i64) : i64
    %95 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %87[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %88[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(2 : i64) : i64
    %100 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %87[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %88[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(3 : i64) : i64
    %105 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %87[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %88[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(1 : i64) : i64
    %110 = llvm.getelementptr %51[%109] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %80, %110 : !llvm.ptr<ptr<i8>>
    %111 = llvm.mlir.constant(3 : i64) : i64
    %112 = llvm.call @omTensorCreateUntyped(%111) : (i64) -> !llvm.ptr<i8>
    %113 = llvm.mlir.constant(1 : i64) : i64
    %114 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %115 = llvm.bitcast %114 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %116 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %117 = llvm.bitcast %116 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%112, %113, %115, %117) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %118 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%112, %118) : (!llvm.ptr<i8>, i64) -> ()
    %119 = llvm.call @omTensorGetShape(%112) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %120 = llvm.call @omTensorGetStrides(%112) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %121 = llvm.mlir.constant(0 : i64) : i64
    %122 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %123 = llvm.getelementptr %119[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %122, %123 : !llvm.ptr<i64>
    %124 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %125 = llvm.getelementptr %120[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %124, %125 : !llvm.ptr<i64>
    %126 = llvm.mlir.constant(1 : i64) : i64
    %127 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %128 = llvm.getelementptr %119[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %130 = llvm.getelementptr %120[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(2 : i64) : i64
    %132 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %133 = llvm.getelementptr %119[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %135 = llvm.getelementptr %120[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(2 : i64) : i64
    %137 = llvm.getelementptr %51[%136] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %112, %137 : !llvm.ptr<ptr<i8>>
    %138 = llvm.call @omTensorListCreate(%51, %48, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %138 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<202 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<202 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

